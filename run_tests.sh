#!/bin/bash

echo "[+] Building xv6..."
make clean > logs/build.log 2>&1
make >> logs/build.log 2>&1

echo "[+] Starting QEMU and running nettest..."
make qemu << EOF > logs/nettest_grade.log 2>&1
nettest grade
EOF

echo "[+] Test finished. Logs saved in logs/"
