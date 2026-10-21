# 汇编语言作业

本仓库按作业 1～3 分目录提交，保留源码、可执行文件、实验说明和必要反汇编记录。

## 作业 1：Hello World

[实验说明](hw1/实验说明.md) 包含环境搭建、程序结构、常用寄存器及 DEBUG 直接写内存实验步骤。

- `HELLO.ASM`、`HELLO.EXE`：常规 Hello World。
- `HELLO2.ASM`、`HELLO2.EXE`：使用 OFFSET 的对比版本。
- `RAW.DBG`、`RAW.LOG`：直接写入机器码与字符串的 DEBUG 命令及执行记录。
- `INSPECT.LOG`、`INSPECT2.LOG`：EXE 反汇编、寄存器与正常退出记录。

## 作业 2：ASCII 小写字母

[作业说明](hw2/作业说明.md) 解释每行 13 个字母的实现。

- `LOOP13.ASM/EXE`：双重 LOOP，保存并恢复外层 CX。
- `JUMP13.ASM/EXE`：条件跳转循环。
- `ASCII13.c`、`ASCII13_C.exe`：C 实现。
- `C_FULL_DISASM.txt`、`C_MAIN_注释.txt`：C 完整反汇编及 main 函数逐条注释。

## 作业 3：求和与进制转换

[作业说明](hw3/作业说明.md) 解释数值范围、输入及十进制输出方法。

- `SUMREG`、`SUMMEM`、`SUMSTK` 的 ASM/EXE：分别在寄存器、数据段、栈中累加 1～100，输出 5050。
- `SUMIN.ASM/EXE`：输入 n（1～100），计算 1+2+…+n。
- `H2D.ASM/EXE`、`D2H.ASM/EXE`：0～255 范围内的双向进制转换。
- `IO.INC`：汇编程序共用的输入输出代码，编译时必需。
- `SUM.C`、`SUM_C.exe`：C 求和；`C_FULL_DISASM.txt`、`C_SUM_注释.txt` 为真实反汇编及注释。

## 运行与编译

汇编 EXE 在 DOSBox 中运行。使用 DOSBox 0.74，将仓库目录挂载为 C 盘，并将包含 MASM、LINK、DEBUG 的工具目录挂载为 T 盘（工具需自行配置）：

```dos
mount c "仓库完整路径"
mount t "汇编工具目录"
c:
set PATH=T:\
cd HW1
HELLO
DEBUG < RAW.DBG
```

将目录切换为 `C:\HW2` 或 `C:\HW3`，即可运行对应作业的 EXE。重新编译示例（在对应作业目录中）：

```dos
masm HELLO.ASM;
link HELLO.OBJ;
```

作业 3 编译时须保证 `IO.INC` 与 ASM 位于同一目录。各报告保留了具体命令和结果说明。

C EXE 在 Windows 的 Cygwin 环境运行，依赖 Cygwin 运行库。两份 C 反汇编为 **x86-64**；手写汇编为 **8086 DOS**。题目未限定 C 编译器，如另行要求 16 位 C 反汇编，应使用对应编译器重新生成。
