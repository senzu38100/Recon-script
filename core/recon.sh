#!/bin/bash

INPUT_FILE="../targets.txt"
OUTPUT_DIR="scans/nmap"
mkdir -p "$OUTPUT_DIR"

while read -r TARGET; do
    [[ -z "$TARGET" || "$TARGET" =~ ^# ]] && continue
    echo "[+] Scanning $TARGET with Nmap..."
    nmap -sV -T4 -oN "$OUTPUT_DIR/$TARGET.txt" "$TARGET"
done < "$INPUT_FILE"

