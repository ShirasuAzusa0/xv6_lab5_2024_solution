# USER MANUAL

## 1. Start xv6

```markdown
make qemu
```

## 2. Verify system boot

After QEMU starts, you should see:

```
xv6 kernel is booting
init: starting sh
$
```

## 3. Run network tests

Inside xv6 shell, run:

```
nettest grade
```

## 4. Expected output

```
txone: sending one packet
arp_rx: received an ARP packet
ip_rx: received an IP packet
ping0: OK
ping1: OK
ping2: OK
ping3: OK
dns: OK
```

This indicates NIC, IP, and UDP are functioning correctly.

## 5. Exit xv6

Press `Ctrl+A` then `X` to exit QEMU.