"""Verify C output and annotate actual main disassembly."""
from pathlib import Path
import re
import subprocess
p = Path(__file__).parent
expected_output = b'a b c d e f g h i j k l m\nn o p q r s t u v w x y z\n'
result = subprocess.run([str(p/'ASCII13_C.exe')], capture_output=True, check=True)
assert result.stdout.replace(b'\r\n', b'\n') == expected_output
(p/'C_OUTPUT.TXT').write_bytes(result.stdout)
text = (p/'C_FULL_DISASM.txt').read_text(encoding='utf-8-sig')
part = text.split('<main>:', 1)[1].split('<__cxa_atexit>:', 1)[0]
rows=[]
for line in part.splitlines():
    m=re.match(r'^\s*([0-9a-f]+):\s+(?:(?:[0-9a-f]{2})\s+)+\s*(.*)$',line)
    if m:
        rows.append((line, re.sub(r'\s+',' ',re.sub(r' <main\+0x[0-9a-f]+>', '', m[2].strip()))))
expected = ['push rbp', 'mov rbp,rsp', 'sub rsp,0x30', 'call 100401100 <__main>', 'mov DWORD PTR [rbp-0x4],0x61', 'mov DWORD PTR [rbp-0x8],0x0', 'jmp 1004010dc', 'mov DWORD PTR [rbp-0xc],0x0', 'jmp 1004010c8', 'mov eax,DWORD PTR [rbp-0x4]', 'mov ecx,eax', 'call 100401110 <putchar>', 'add DWORD PTR [rbp-0x4],0x1', 'cmp DWORD PTR [rbp-0xc],0xb', 'jg 1004010c4', 'mov ecx,0x20', 'call 100401110 <putchar>', 'add DWORD PTR [rbp-0xc],0x1', 'cmp DWORD PTR [rbp-0xc],0xc', 'jle 1004010a6', 'mov ecx,0xa', 'call 100401110 <putchar>', 'add DWORD PTR [rbp-0x8],0x1', 'cmp DWORD PTR [rbp-0x8],0x1', 'jle 10040109d', 'mov eax,0x0', 'add rsp,0x30', 'pop rbp', 'ret', 'nop']
notes = ['保存调用者的栈帧基址', '为 main 建立栈帧', '预留局部变量及调用所需的栈空间', '编译器插入的运行时初始化', "ch='a'，ASCII 61H", 'row=0', '先检查外层循环条件', '每一行开始时 col=0', '先检查内层循环条件', '从局部变量读取 ch', '将 ch 放入本次调用的首个整数参数寄存器', '调用 C 库输出字符，不是 INT 21H', '++ch，准备下一个小写字母', '比较 col 与 11，即检查 col<12', '若 col>11，跳过空格输出', '首个参数设为 ASCII 空格 20H', '输出字母间的空格', '++col', '比较 col 与 12', 'col<=12 等价于 col<13，继续内层循环', "输出换行字符 '\\n'，值为 0AH", '输出一行后的换行', '++row', '比较 row 与 1', 'row<=1 等价于 row<2，继续外层循环', 'main 的返回值为 0', '回收本函数预留的栈空间', '恢复调用者的栈帧基址', '返回调用者，由运行库完成进程结束', '以下 NOP 是对齐填充']
assert [r[1] for r in rows[:len(expected)]] == expected, 'Compiler output changed; review annotations.'
out=['C main 函数的真实反汇编与逐条注释', 'Cygwin GCC x86-64, -O0 -g; objdump -d -S -Mintel.', '此文件不是 8086 DOS 反汇编。', '']
for (line, instruction), note in zip(rows, notes):
    out += [line, '    ; '+note]
(p/'C_MAIN_注释.txt').write_text('\n'.join(out)+'\n', encoding='utf-8')
print('PASS: C ASCII output matches; actual main disassembly annotated.')
