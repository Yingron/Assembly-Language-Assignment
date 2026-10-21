# 汇编语言作业

三个作业的源码、DOS 可执行文件、实验说明、实际运行结果和反汇编记录。题目截图见 [requirements](requirements/)。

## 作业 1：Hello World

目录：[hw1](hw1/)，报告：[实验说明](hw1/实验说明.md)。

- 常规方式：`HELLO.ASM` → MASM → LINK → `HELLO.EXE`。
- 对比版本：`HELLO2.ASM` 使用 `MOV DX,OFFSET Hello`。
- 直接写内存：`RAW.DBG` 用 DEBUG 的 `e` 命令写机器码与字符串，再执行；完整现场见 `RAW.LOG`。
- `INSPECT.LOG` 保留 `u` 反汇编、`t` 单步、寄存器与内存变化；报告说明程序结构、段地址、寄存器和 DOS 服务。

## 作业 2：ASCII 小写字母

目录：[hw2](hw2/)，报告：[作业说明](hw2/作业说明.md)。

- `LOOP13.ASM/EXE`：双重 LOOP，使用 PUSH/POP 保存并恢复外层 CX。
- `JUMP13.ASM/EXE`：条件跳转实现两行输出，每行 13 个字母。
- `ASCII13.c`、`C_FULL_DISASM.txt`、`C_MAIN_注释.txt`：C 实现、真实反汇编及逐条注释。

## 作业 3：求和与进制转换

目录：[hw3](hw3/)，报告：[作业说明](hw3/作业说明.md)。

- `SUMREG`、`SUMMEM`、`SUMSTK`：分别在寄存器、数据段、栈中累加 1～100，输出 5050。
- `SUMIN`：输入 n（1～100），计算 1+2+…+n，输出十进制结果。
- `H2D`：输入 1～2 位十六进制数，输出十进制；`D2H` 完成 0～255 的反向转换。
- `SUM.C`、`C_FULL_DISASM.txt`、`C_SUM_注释.txt`：C 求和、真实反汇编及注释。
- `IO.INC` 是公共输入输出代码，编译时必须保留。

## 运行与复现

DOS EXE 在 DOSBox 中运行。Windows 安装 DOSBox 0.74，并按 [工具说明](tools/README.md) 配置 tools。各目录的“运行实验.cmd”启动演示，“重新验证.cmd”重新编译并验证。工具安装包、编辑器和运行库不作为作业文件上传。

在仓库根目录使用 PowerShell：

```powershell
.\Run-Lab.ps1 -Homework 1 -Verify
.\Run-Lab.ps1 -Homework 2 -Verify
.\Run-Lab.ps1 -Homework 3 -Verify
.\hw2\Build-C.ps1
.\hw3\Build-C.ps1
```

后两条命令需要 Cygwin（默认 `C:\cygwin64`，含 GCC 和 objdump）及 Python 3。C EXE 依赖 Cygwin 运行库，在 Windows 环境运行；两份 C 反汇编是 **x86-64**，与手写 **8086 DOS** 代码分别标明。题图没有限定 C 编译器；如课程另行限定 16 位 C 编译器，需要按该限定重新生成 C 反汇编。

## 验证

本次提交于 2026-10-21 重新编译和运行，详情见 [验证记录](VERIFICATION.md)。共验证 10 个 DOS EXE，作业 3 的 641 个测试全部通过，两个 C 程序均完成运行及实际反汇编检查。提交保留构建日志、列表和运行结果；批量测试输出可由脚本重新生成。
