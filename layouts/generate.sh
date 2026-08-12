#!/usr/bin/env bash
set -euo pipefail

layouts_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source_file="${layouts_dir}/layouts.md"
css_file="${layouts_dir}/print.css"
output_file="${layouts_dir}/layouts.html"

if ! command -v pandoc >/dev/null 2>&1; then
    echo "error: pandoc is required to generate ${output_file}" >&2
    exit 1
fi

pandoc "${source_file}" \
    --standalone \
    --section-divs \
    --embed-resources \
    --css "${css_file}" \
    --metadata pagetitle="Totem Keymap Layouts" \
    --output "${output_file}"

printf 'Generated %s\n' "${output_file}"

if command -v open >/dev/null 2>&1; then
    open "${output_file}"
elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "${output_file}" >/dev/null 2>&1 &
else
    echo "warning: could not find a browser opener; open ${output_file} manually" >&2
fi
