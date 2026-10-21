"""Extract actual sum_to disassembly and add Chinese instruction notes."""
from pathlib import Path
import re
import subprocess

p = Path(__file__).parent
exe = p/'SUM_C.exe'
for n in range(1,101):
    result = subprocess.run([str(exe),str(n)],capture_output=True,text=True,check=True)
    assert result.stdout.strip() == str(n*(n+1)//2), (n,result.stdout)
assert subprocess.check_output([str(exe)],text=True).strip() == '5050'
for n in ['0','101','-1','abc','1x','']:
    assert subprocess.run([str(exe),n],capture_output=True).returncode == 1

text = (p/'C_FULL_DISASM.txt').read_text(encoding='utf-8-sig')
part = text.split('<sum_to>:',1)[1].split('<main>:',1)[0]
notes = [
    '保存调用者的帧指针 RBP。',
    '建立当前函数的栈帧。',
    '在栈中分配 16 字节局部空间。',
    '保存参数 n；本机 Cygwin x86-64 调用约定通过 ECX 传入它。',
    'total=0，保存在 [RBP-4]，占 4 字节。',
    'i=1，保存在 [RBP-8]，占 4 字节。',
    '先跳到循环条件检查处，体现 for 循环先判断再执行。',
    '将当前 i 读入 EAX。',
    '执行 total += i，将结果写回栈中的 total。',
    '执行 ++i。',
    '将 i 读入 EAX，准备比较。',
    '比较 n 与 i，计算 n-i 并设置标志位。',
    'JAE 按无符号数判断 n>=i 时继续循环。',
    '将 total 放入返回值寄存器 EAX。',
    '释放局部变量空间。',
    '恢复调用者的 RBP。',
    '返回调用处。',
]
instructions = [line for line in part.splitlines() if re.match(r'^\s+[0-9a-f]+:\s',line)]
assert len(instructions) == len(notes), 'Compiler output changed; update annotation.'
out = ['C 求和函数的真实反汇编与逐条注释',
       '环境：Cygwin GCC，x86-64，-O0 -g，objdump -d -S -Mintel。',
       '这是本次 SUM_C.exe 的实际机器码，不是 8086 或 16 位 DOS 反汇编。',
       'sum_to 的参数与局部变量均为 unsigned int；此编译器下占 32 位。',
       '源码与 main 的完整反汇编见 C_FULL_DISASM.txt。','']
for line,note in zip(instructions,notes):
    out += [line, '    ; '+note]
(p/'C_SUM_注释.txt').write_text('\n'.join(out)+'\n',encoding='utf-8')
(p/'C_VERIFY.txt').write_text('PASS: default 5050; n=1..100; six invalid arguments rejected.\n',encoding='ascii')
print('PASS: C output and error status verified; actual disassembly annotated.')
