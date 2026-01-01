# XV6 2024 Lab5 solution

本项目为 MIT 6.S081 xv6-labs-2024 Lab5 Networking 实验的完整实现，
在 xv6 操作系统中实现了基于 e1000 网卡的网络驱动（NIC），以及
ARP / IP / UDP 协议栈，并通过官方提供的 nettest 测试程序验证。

本实验已顺利通过以下测试：
- nettest txone
- nettest grade

---

## 一、项目结构说明

项目结构如下：

```
xv6_lab5_2024_solution/             # Lab5 Networking 实验最终提交目录
├── README.md                       # 项目总说明（实验目标 + 内容概览）
├── VERSION.txt                     # xv6 2024 实验所用版本与环境信息
├── BUILD.md                        # xv6 编译与构建步骤说明
├── USER_MANUAL.md                  # 用户手册（如何启动 xv6 与运行测试）
├── REPORT.md                       # 实验报告与实验心得总结
├── CODE_NOTES.md                   # 核心代码说明（NIC / UDP 实现说明）
├── run_tests.sh                    # 自动化测试脚本（一键运行 nettest）
├── logs/                           # 实验运行与调试日志目录
│   ├── build.log                   # make 构建 xv6 内核时的输出日志
│   ├── qemu_boot.log               # QEMU 启动与 xv6 内核启动日志
│   ├── nettest_grade.log           # nettest grade 完整测试输出日志
│   └── panic.log                   # 内核异常或 panic 时的调试信息
└── xv6-labs-2024/                  # MIT xv6 2024 官方实验源码目录
    ├── kernel/                     # xv6 内核源码目录
    │   ├── e1000.c                 # e1000 网卡驱动（发送/接收实现）
    │   ├── net.c                   # 网络协议栈实现（ARP/IP/UDP）
    │   └── net.h                   # 网络相关数据结构与接口声明
    ├── user/                       # xv6 用户态程序源码目录
    │   └── nettest.c               # 官方网络功能测试程序
    ├── Makefile                    # xv6 构建规则文件
    ├── fs.img                      # xv6 用户文件系统镜像
    └── kernel/kernel               # 编译生成的 xv6 内核二进制文件
```



---

## 二、实验内容概述

- 实现 e1000 网卡发送与接收功能
- 正确管理 DMA buffer 生命周期，避免内存泄漏
- 实现 ARP、IP、ICMP、UDP 协议
- 实现 DNS 查询功能（UDP）
- 通过官方 `nettest grade` 全部测试

---

## 三、快速运行

```bash
cd xv6-labs-2024
make qemu
```



进入 xv6 shell 后：

```
nettest grade
```



---

## 四、实验结果

- 所有网络测试通过
- 系统运行稳定，无 panic
- free 检测通过，无内存泄漏