# 本地工具配置

工具二进制仅在本地使用，由 `.gitignore` 排除。安装 DOSBox 0.74 后，将以下文件放在本目录：

- `MASM.EXE`：本次使用 Microsoft Macro Assembler 5.10。
- `LINK.EXE`：本次使用 Microsoft Overlay Linker 3.65。
- `DEBUG.COM`：本次使用 FreeDOS DEBUG 2.50。

本电脑已有这些文件，已配置在本目录。新电脑需自行从课程提供的环境或相应发布来源取得工具。原始本地文件来源记录为：

- MASM / LINK：[Microsoft MS-DOS v4.0 TOOLS](https://github.com/microsoft/MS-DOS/tree/main/v4.0/src/TOOLS)。
- DEBUG：[FreeDOS Debug/X 2.50](https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/dos/debug/debugx/2.50/)。

本次实际使用的文件 SHA256：

```text
MASM.EXE  1C6286C69B616160B8475AD17453EE872702A2C98075C2159EC792A1C745275F
LINK.EXE  124A3C800EDC16B60F696D35A9DFEC798B68B78FE2CA90C5988EA76BDEAB1A8A
```

DEBUG.COM 的本次哈希见根目录 `SHA256SUMS.txt`。这些哈希用于标识验证所用文件，不表示已核验外部签名。

DOSBox 启动后将仓库根目录挂载为 C:，PATH 为 C:\TOOLS；因此仓库移动位置后无需修改 DOS 内的工具路径。
