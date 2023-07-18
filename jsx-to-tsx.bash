find . -type f -name "*.jsx" | while read file; do
    dir=$(dirname "${file}")

    base=$(basename "${file}" .jsx)

    mv "${file}" "${dir}/${base}.tsx"
done
