nasm -f elf32 $1.nasm -o $1.o
ld -m elf_i386 -o $1 $1.o 
objdump -d ./$1|grep '[0-9a-f]:'|grep -v 'file'| cut -f2 -d:| cut -f1-6 -d' ' | tr -s ' '| tr '\t' ' ' | sed 's/ $//g'|sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/'|sed 's/$/"/'|sed 's/$/"/g'
