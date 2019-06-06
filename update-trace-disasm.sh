#!/bin/sh

IFS=$'\n'; set -f
for f in $(find \
demo-com-16bit \
demo-com-32bit \
games-com \
games-com-commercial \
-name '*.com'); do echo "$f" 1>&2; dustbox-disasm "$f" > "$f.dis.asm"; ndisasm "$f" > "$f.ndisasm"; done
unset IFS; set +f
