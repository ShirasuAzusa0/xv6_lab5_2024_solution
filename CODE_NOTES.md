# Code Notes – Lab5 Networking

## kernel/e1000.c
- `e1000_transmit`  
  Programs TX descriptor ring and triggers NIC to send packet.

- `e1000_recv`  
  Handles received packets, passes them to network layer via `net_rx`.

- `e1000_intr`  
  Handles NIC interrupts and dispatches received packets.

## kernel/net.c
- `arp_rx`  
  Handles ARP request and sends ARP reply.

- `ip_rx`  
  Parses IP packets and dispatches UDP payload.

- `sys_send`  
  Builds Ethernet + IP + UDP packet and sends via e1000.

- `sys_recv`  
  Delivers received UDP payload to user process.

## Design Notes
- Packet buffers are dynamically allocated and freed after use
- Network stack is minimal and single-producer/single-consumer
- Focus is correctness and clarity rather than performance