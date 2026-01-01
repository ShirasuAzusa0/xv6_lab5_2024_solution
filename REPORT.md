# REPORT

## Experiment Objective
This experiment implements basic networking support in xv6,
including NIC driver support (e1000) and a minimal UDP/IP stack.

## Implementation Summary
- Implemented packet transmission and reception in e1000 driver
- Implemented ARP handling, IP parsing, and UDP packet delivery
- Connected NIC interrupts to network stack processing
- Passed all official `nettest` checks

## Experiment Result
All networking tests provided by xv6 (`nettest grade`) run successfully,
including packet transmission, ping, and DNS resolution.

## Experiment Reflection
本次 Lab5 实验让我对操作系统网络子系统的实现有了更加直观的认识。
通过在 xv6 中实现 e1000 网卡驱动和基本的 UDP/IP 协议处理流程，
我理解了从硬件中断到协议栈再到用户程序之间的完整数据路径。

在实验过程中，我参考了官方文档并结合网络资料进行调试，
最终成功完成了所有功能要求。实验也加深了我对
操作系统中设备驱动与内核服务协作机制的理解。

本次实验中，我合理使用了大模型工具辅助整理实验报告表述，
但核心代码与调试过程均由本人独立完成。