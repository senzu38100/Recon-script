#!/bin/bash

TARGET=$1
OUTPUT_DIR="scans/nmap"
mkdir -p "$OUTPUT_DIR"

echo "[+] Scanning $TARGET with Nmap..."
nmap -sV -T4 -oN "$OUTPUT_DIR/$TARGET.txt" "$TARGET"

