#!/bin/bash

# 인자 확인
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file.txt> <template_file.md>"
    exit 1
fi

input_file="$1"
template_file="$2"

# txt 파일에서 파일 이름 읽기
while read filename; do
    output_file="${filename}.md"
    cp "$template_file" "$output_file"
    echo "Created: $output_file"
done < "$input_file"
