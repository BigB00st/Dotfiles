#!/usr/bin/env python3

from pwn import *

{bindings}

context.binary = exe

env = dict(LD_PRELOAD="%s:%s" % (ld.path, libc.path))

def conn(argv=[], *a, **kw):
    if args.GDB:
        return gdb.debug(exe.path, env=env, gdbscript=gdbscript, *a, **kw)
    elif args.REMOTE:
        return remote("addr", 1337)
    else:
        return process(exe.path, env=env, *a, **kw)

gdbscript = '''
continue
'''

p = conn()

p.interactive()
