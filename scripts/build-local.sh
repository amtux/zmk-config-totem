#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${ROOT_DIR}/firmware"
IMAGE="${ZMK_BUILD_IMAGE:-zmkfirmware/zmk-build-arm:stable}"
CACHE_VOLUME="${ZMK_CACHE_VOLUME:-zmk-config-totem-workspace}"
TARGET="${1:-all}"

case "${TARGET}" in
    all)   SHIELDS="totem_left totem_right" ;;
    left)  SHIELDS="totem_left" ;;
    right) SHIELDS="totem_right" ;;
    *)
        echo "Usage: $0 [all|left|right]" >&2
        exit 2
        ;;
esac

if ! command -v docker >/dev/null 2>&1; then
    echo "Docker is required: https://docs.docker.com/desktop/setup/install/mac-install/" >&2
    exit 1
fi

if ! docker info >/dev/null 2>&1; then
    echo "The Docker daemon is not running. Start Docker Desktop or run: colima start" >&2
    exit 1
fi

mkdir -p "${OUTPUT_DIR}"
rm -f "${OUTPUT_DIR}"/*.uf2 "${OUTPUT_DIR}/firmware.zip"

echo "Building ${SHIELDS} with ${IMAGE}..."
docker run --rm \
    --mount "type=bind,src=${ROOT_DIR},dst=/repo,readonly" \
    --mount "type=bind,src=${OUTPUT_DIR},dst=/out" \
    --mount "type=volume,src=${CACHE_VOLUME},dst=/workspace" \
    -e "SHIELDS=${SHIELDS}" \
    "${IMAGE}" \
    bash -euo pipefail -c '
        rm -rf /workspace/config.next
        cp -a /repo/config /workspace/config.next
        rm -rf /workspace/config
        mv /workspace/config.next /workspace/config

        cd /workspace
        if [ ! -d .west ]; then
            west init -l config
        fi
        west update --fetch-opt=--filter=tree:0
        west zephyr-export

        for shield in ${SHIELDS}; do
            build_dir="/workspace/build/${shield}"
            west build \
                --pristine=auto \
                -s /workspace/zmk/app \
                -d "${build_dir}" \
                -b xiao_ble//zmk \
                -- \
                -DZMK_CONFIG=/workspace/config \
                -DZMK_EXTRA_MODULES=/repo \
                -DSHIELD="${shield}"

            cp "${build_dir}/zephyr/zmk.uf2" \
                "/out/${shield}-xiao_ble-zmk.uf2"
        done
    '

(
    cd "${OUTPUT_DIR}"
    zip -q firmware.zip ./*.uf2
)

echo
echo "Build complete:"
ls -lh "${OUTPUT_DIR}"/*.uf2 "${OUTPUT_DIR}/firmware.zip"
