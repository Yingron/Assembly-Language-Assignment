# 提交前验证记录

验证日期：2026-10-21（Asia/Shanghai）。工作目录为本仓库，使用本仓库中的源码与脚本重新构建、运行，未以旧目录的运行结果替代本次验证。

## 环境与构建

- Windows、DOSBox 0.74、MASM 5.10、LINK 3.65、FreeDOS DEBUG 2.50。
- C 部分使用本机 Cygwin GCC、objdump 和 Python 3，编译选项 `-x c -O0 -g -Wall -Wextra -std=c11`；两个程序均成功编译。
- 10 份 DOS 源码均为 0 Warning Errors、0 Severe Errors，均重新链接生成 DOS MZ EXE。
- 验证前删除对应 DOS EXE、旧日志、旧输出与完成标记。DOS 批处理完成后写入新的 VERIFY.OK，脚本检查输出和退出状态。

## 作业 1

`./Run-Lab.ps1 -Homework 1 -Verify` 通过。

- HELLO 与 HELLO2 的实际输出均精确为 `Hello world!` 加 CRLF。
- DEBUG 执行源码编译的 EXE，保存反汇编、单步寄存器及数据内存记录。
- DEBUG 通过 `e` 将机器码写至 CS:0100、字符串写至 CS:0200，`u` 反汇编后实际执行，输出相同文字，退出状态 0000。
- 证据：[INSPECT.LOG](hw1/INSPECT.LOG)、[INSPECT2.LOG](hw1/INSPECT2.LOG)、[RAW.LOG](hw1/RAW.LOG)、[VERIFY_RESULT.txt](hw1/VERIFY_RESULT.txt)。

## 作业 2

`./Run-Lab.ps1 -Homework 2 -Verify` 与 `./hw2/Build-C.ps1` 通过。

- LOOP 与条件跳转两个 DOS 版本的输出按字节核对：a～z 顺序正确，两行各 13 个字母，字母间单空格，无行尾空格，CRLF 换行，退出状态 0000。
- C 版本运行输出与上述字母内容一致。C_MAIN_注释.txt 从实际 C_FULL_DISASM.txt 提取 main 指令并添加注释；脚本核对预期指令，编译结果变化时会中止。
- 证据：[LOOP13.TXT](hw2/LOOP13.TXT)、[JUMP13.TXT](hw2/JUMP13.TXT)、[LOOPDIS.LOG](hw2/LOOPDIS.LOG)、[JUMPDIS.LOG](hw2/JUMPDIS.LOG)、[C_OUTPUT.TXT](hw2/C_OUTPUT.TXT)、[VERIFY_RESULT.txt](hw2/VERIFY_RESULT.txt)。

## 作业 3

`./Run-Lab.ps1 -Homework 3 -Verify` 与 `./hw3/Build-C.ps1` 通过。

- 641 个 DOS 用例检查输出和退出状态：三个固定求和程序均为 5050；0～255 的全部 H2D、D2H 转换；1～100 的全部 SUMIN 输入；大小写及非法输入。合法输入返回 0，非法输入返回 1。
- C 程序默认结果 5050，参数 1～100 全部正确，六个非法参数均返回 1。真实 sum_to 反汇编已提取并逐条注释。
- 证据：[cases.json](hw3/cases.json)、[EXAMPLES.txt](hw3/EXAMPLES.txt)、[VERIFY_RESULT.txt](hw3/VERIFY_RESULT.txt)、[C_VERIFY.txt](hw3/C_VERIFY.txt)。完整批量输出在本地 TESTS 中，可重新验证生成。

## 文件对应关系与边界

[SHA256SUMS.txt](SHA256SUMS.txt) 记录本次源码、DOS/C 可执行文件及所用工具的 SHA256。工具二进制仅本地配置，不上传仓库。

作业要求的“直接写内存”按 DEBUG `e` 写入机器码和数据执行完成。作业 3 输入扩展按输入 n 求 1～n 实现；十进制转十六进制选择 0～255 范围，和逆向练习一致。

C 部分是 Cygwin x86-64 可执行程序和反汇编，依赖 Cygwin 运行库；它们不是 DOS/8086 程序。手写汇编部分为 8086 DOS。该区别已在各作业说明中明确。
