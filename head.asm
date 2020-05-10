
_head:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

    close(fd);
    
}

int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
    int i, mode = 1, n = 10;
    
    for(i=1; i<argc; i++){
  11:	bb 01 00 00 00       	mov    $0x1,%ebx
int main(int argc, char *argv[]){
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 51 04             	mov    0x4(%ecx),%edx
    int i, mode = 1, n = 10;
  1e:	c7 45 d8 0a 00 00 00 	movl   $0xa,-0x28(%ebp)
  25:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    for(i=1; i<argc; i++){
  2c:	83 f8 01             	cmp    $0x1,%eax
int main(int argc, char *argv[]){
  2f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  32:	89 55 e0             	mov    %edx,-0x20(%ebp)
    for(i=1; i<argc; i++){
  35:	0f 8e 88 00 00 00    	jle    c3 <main+0xc3>
  3b:	90                   	nop
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        strcpy(buffer, argv[i]);
  40:	8b 45 e0             	mov    -0x20(%ebp),%eax
  43:	8d 34 9d 00 00 00 00 	lea    0x0(,%ebx,4),%esi
  4a:	83 ec 08             	sub    $0x8,%esp
  4d:	8d 3c 30             	lea    (%eax,%esi,1),%edi
  50:	ff 37                	pushl  (%edi)
  52:	68 60 0d 00 00       	push   $0xd60
  57:	e8 94 02 00 00       	call   2f0 <strcpy>

        if(buffer[0] == '-'){
  5c:	83 c4 10             	add    $0x10,%esp
  5f:	80 3d 60 0d 00 00 2d 	cmpb   $0x2d,0xd60
  66:	75 40                	jne    a8 <main+0xa8>
            if(buffer[1] == 'n' || buffer[1] == 'c'){                  // baris, 2 args, default 10
  68:	0f b6 05 61 0d 00 00 	movzbl 0xd61,%eax
  6f:	3c 6e                	cmp    $0x6e,%al
  71:	74 5d                	je     d0 <main+0xd0>
  73:	3c 63                	cmp    $0x63,%al
  75:	74 59                	je     d0 <main+0xd0>
                }else if(buffer[1] == 'c'){            // byte, 2 args
                    mode = 2;
                    i++;
                    n = atoi(argv[i]);
                }
            }else if(buffer[1] == 'q'){
  77:	3c 71                	cmp    $0x71,%al
  79:	0f 84 b1 00 00 00    	je     130 <main+0x130>
                    printf(2, "head: missing arguments\n");
                    exit();
                }
                mode = 3;
                n = 20;
            }else if(buffer[1] == 'v'){
  7f:	3c 76                	cmp    $0x76,%al
  81:	0f 85 0a 01 00 00    	jne    191 <main+0x191>
                if(argc < 3){
  87:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
  8b:	0f 84 da 00 00 00    	je     16b <main+0x16b>
                    printf(2, "head: missing arguments\n");
                    exit();
                }
                mode = 4;
  91:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%ebp)
    for(i=1; i<argc; i++){
  98:	83 c3 01             	add    $0x1,%ebx
  9b:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  9e:	7f a0                	jg     40 <main+0x40>
  a0:	eb 21                	jmp    c3 <main+0xc3>
  a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            }else{
                printf(2, "head: invalid syntax\n");
                exit();
            }
        }else{
            head(argv[i], n, mode);
  a8:	83 ec 04             	sub    $0x4,%esp
  ab:	ff 75 dc             	pushl  -0x24(%ebp)
  ae:	ff 75 d8             	pushl  -0x28(%ebp)
  b1:	ff 37                	pushl  (%edi)
            if(i+1 < argc)
  b3:	83 c3 01             	add    $0x1,%ebx
            head(argv[i], n, mode);
  b6:	e8 f5 00 00 00       	call   1b0 <head>
            if(i+1 < argc)
  bb:	83 c4 10             	add    $0x10,%esp
  be:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  c1:	7c 4d                	jl     110 <main+0x110>
                printf(1, "\n");
        }
    }
    exit();
  c3:	e8 7a 04 00 00       	call   542 <exit>
  c8:	90                   	nop
  c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
                if(argc < 4){
  d0:	83 7d e4 03          	cmpl   $0x3,-0x1c(%ebp)
  d4:	0f 8e 91 00 00 00    	jle    16b <main+0x16b>
                }else if(argc > 4){
  da:	83 7d e4 04          	cmpl   $0x4,-0x1c(%ebp)
  de:	0f 85 9a 00 00 00    	jne    17e <main+0x17e>
  e4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  e7:	83 c3 01             	add    $0x1,%ebx
                if(buffer[1] == 'n'){
  ea:	3c 6e                	cmp    $0x6e,%al
  ec:	8b 54 31 04          	mov    0x4(%ecx,%esi,1),%edx
  f0:	74 5e                	je     150 <main+0x150>
                    n = atoi(argv[i]);
  f2:	83 ec 0c             	sub    $0xc,%esp
  f5:	52                   	push   %edx
  f6:	e8 d5 03 00 00       	call   4d0 <atoi>
  fb:	83 c4 10             	add    $0x10,%esp
  fe:	89 45 d8             	mov    %eax,-0x28(%ebp)
                    mode = 2;
 101:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%ebp)
 108:	eb 8e                	jmp    98 <main+0x98>
 10a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
                printf(1, "\n");
 110:	83 ec 08             	sub    $0x8,%esp
 113:	68 fe 09 00 00       	push   $0x9fe
 118:	6a 01                	push   $0x1
 11a:	e8 71 05 00 00       	call   690 <printf>
 11f:	83 c4 10             	add    $0x10,%esp
 122:	e9 19 ff ff ff       	jmp    40 <main+0x40>
 127:	89 f6                	mov    %esi,%esi
 129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
                if(argc < 4){
 130:	83 7d e4 03          	cmpl   $0x3,-0x1c(%ebp)
 134:	7e 35                	jle    16b <main+0x16b>
                n = 20;
 136:	c7 45 d8 14 00 00 00 	movl   $0x14,-0x28(%ebp)
                mode = 3;
 13d:	c7 45 dc 03 00 00 00 	movl   $0x3,-0x24(%ebp)
 144:	e9 4f ff ff ff       	jmp    98 <main+0x98>
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
                    n = atoi(argv[i]);
 150:	83 ec 0c             	sub    $0xc,%esp
 153:	52                   	push   %edx
 154:	e8 77 03 00 00       	call   4d0 <atoi>
 159:	83 c4 10             	add    $0x10,%esp
 15c:	89 45 d8             	mov    %eax,-0x28(%ebp)
                    mode = 1;
 15f:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 166:	e9 2d ff ff ff       	jmp    98 <main+0x98>
                    printf(2, "head: missing arguments\n");
 16b:	51                   	push   %ecx
 16c:	51                   	push   %ecx
 16d:	68 07 0a 00 00       	push   $0xa07
 172:	6a 02                	push   $0x2
 174:	e8 17 05 00 00       	call   690 <printf>
                    exit();
 179:	e8 c4 03 00 00       	call   542 <exit>
                    printf(2, "head: too many arguments\n");
 17e:	52                   	push   %edx
 17f:	52                   	push   %edx
 180:	68 20 0a 00 00       	push   $0xa20
 185:	6a 02                	push   $0x2
 187:	e8 04 05 00 00       	call   690 <printf>
                    exit();
 18c:	e8 b1 03 00 00       	call   542 <exit>
                printf(2, "head: invalid syntax\n");
 191:	50                   	push   %eax
 192:	50                   	push   %eax
 193:	68 3a 0a 00 00       	push   $0xa3a
 198:	6a 02                	push   $0x2
 19a:	e8 f1 04 00 00       	call   690 <printf>
                exit();
 19f:	e8 9e 03 00 00       	call   542 <exit>
 1a4:	66 90                	xchg   %ax,%ax
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	66 90                	xchg   %ax,%ax
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	66 90                	xchg   %ax,%ax
 1ae:	66 90                	xchg   %ax,%ax

000001b0 <head>:
void head(char *filename, int defline, int mode){
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
 1b4:	56                   	push   %esi
 1b5:	53                   	push   %ebx
 1b6:	83 ec 34             	sub    $0x34,%esp
 1b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 1bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
    fd = open(filename, 0);
 1bf:	6a 00                	push   $0x0
void head(char *filename, int defline, int mode){
 1c1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 1c4:	8b 45 10             	mov    0x10(%ebp),%eax
    fd = open(filename, 0);
 1c7:	53                   	push   %ebx
void head(char *filename, int defline, int mode){
 1c8:	89 45 dc             	mov    %eax,-0x24(%ebp)
    fd = open(filename, 0);
 1cb:	e8 b2 03 00 00       	call   582 <open>
    if(fd < 0){
 1d0:	83 c4 10             	add    $0x10,%esp
 1d3:	85 c0                	test   %eax,%eax
    fd = open(filename, 0);
 1d5:	89 45 d8             	mov    %eax,-0x28(%ebp)
    if(fd < 0){
 1d8:	0f 88 fc 00 00 00    	js     2da <head+0x12a>
    if(mode == 4){
 1de:	83 7d dc 04          	cmpl   $0x4,-0x24(%ebp)
 1e2:	0f 84 da 00 00 00    	je     2c2 <head+0x112>
 1e8:	8b 45 dc             	mov    -0x24(%ebp),%eax
void head(char *filename, int defline, int mode){
 1eb:	31 f6                	xor    %esi,%esi
 1ed:	89 f7                	mov    %esi,%edi
 1ef:	83 e8 03             	sub    $0x3,%eax
 1f2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 1f5:	8d 76 00             	lea    0x0(%esi),%esi
    while(((dp = read(fd, buffer, sizeof(buffer))) > 0) && (currline < defline)){      
 1f8:	83 ec 04             	sub    $0x4,%esp
 1fb:	68 00 10 00 00       	push   $0x1000
 200:	68 60 0d 00 00       	push   $0xd60
 205:	ff 75 d8             	pushl  -0x28(%ebp)
 208:	e8 4d 03 00 00       	call   55a <read>
 20d:	83 c4 10             	add    $0x10,%esp
 210:	85 c0                	test   %eax,%eax
 212:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 215:	0f 8e 95 00 00 00    	jle    2b0 <head+0x100>
 21b:	3b 75 e0             	cmp    -0x20(%ebp),%esi
 21e:	0f 8d 8c 00 00 00    	jge    2b0 <head+0x100>
        while((i < dp) && (currline < defline)){
 224:	39 c7                	cmp    %eax,%edi
 226:	7d d0                	jge    1f8 <head+0x48>
 228:	83 7d d4 01          	cmpl   $0x1,-0x2c(%ebp)
 22c:	0f 96 c3             	setbe  %bl
 22f:	83 7d dc 01          	cmpl   $0x1,-0x24(%ebp)
 233:	0f 94 c0             	sete   %al
 236:	09 c3                	or     %eax,%ebx
 238:	89 d8                	mov    %ebx,%eax
 23a:	89 fb                	mov    %edi,%ebx
 23c:	89 f7                	mov    %esi,%edi
 23e:	89 c6                	mov    %eax,%esi
 240:	eb 21                	jmp    263 <head+0xb3>
 242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
                    currline++;
 248:	31 c9                	xor    %ecx,%ecx
 24a:	80 bb 60 0d 00 00 0a 	cmpb   $0xa,0xd60(%ebx)
 251:	0f 94 c1             	sete   %cl
            i++;
 254:	83 c3 01             	add    $0x1,%ebx
                    currline++;
 257:	01 cf                	add    %ecx,%edi
        while((i < dp) && (currline < defline)){
 259:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
 25c:	7e 42                	jle    2a0 <head+0xf0>
 25e:	3b 7d e0             	cmp    -0x20(%ebp),%edi
 261:	7d 3d                	jge    2a0 <head+0xf0>
            printf(1, "%c", buffer[i]);
 263:	0f be 8b 60 0d 00 00 	movsbl 0xd60(%ebx),%ecx
 26a:	83 ec 04             	sub    $0x4,%esp
 26d:	51                   	push   %ecx
 26e:	68 04 0a 00 00       	push   $0xa04
 273:	6a 01                	push   $0x1
 275:	e8 16 04 00 00       	call   690 <printf>
            if(mode == 1 || mode == 3 || mode == 4){
 27a:	89 f0                	mov    %esi,%eax
 27c:	83 c4 10             	add    $0x10,%esp
 27f:	84 c0                	test   %al,%al
 281:	75 c5                	jne    248 <head+0x98>
                currline++;
 283:	31 c9                	xor    %ecx,%ecx
 285:	83 7d dc 02          	cmpl   $0x2,-0x24(%ebp)
 289:	0f 94 c1             	sete   %cl
            i++;
 28c:	83 c3 01             	add    $0x1,%ebx
                currline++;
 28f:	01 cf                	add    %ecx,%edi
        while((i < dp) && (currline < defline)){
 291:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
 294:	7f c8                	jg     25e <head+0xae>
 296:	8d 76 00             	lea    0x0(%esi),%esi
 299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 2a0:	89 fe                	mov    %edi,%esi
 2a2:	89 df                	mov    %ebx,%edi
 2a4:	e9 4f ff ff ff       	jmp    1f8 <head+0x48>
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    close(fd);
 2b0:	8b 45 d8             	mov    -0x28(%ebp),%eax
 2b3:	89 45 08             	mov    %eax,0x8(%ebp)
}
 2b6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2b9:	5b                   	pop    %ebx
 2ba:	5e                   	pop    %esi
 2bb:	5f                   	pop    %edi
 2bc:	5d                   	pop    %ebp
    close(fd);
 2bd:	e9 a8 02 00 00       	jmp    56a <close>
        printf(1, "%s\n", filename);
 2c2:	83 ec 04             	sub    $0x4,%esp
 2c5:	53                   	push   %ebx
 2c6:	68 00 0a 00 00       	push   $0xa00
 2cb:	6a 01                	push   $0x1
 2cd:	e8 be 03 00 00       	call   690 <printf>
 2d2:	83 c4 10             	add    $0x10,%esp
 2d5:	e9 0e ff ff ff       	jmp    1e8 <head+0x38>
        printf(2, "head: cannot open file\n");
 2da:	50                   	push   %eax
 2db:	50                   	push   %eax
 2dc:	68 e8 09 00 00       	push   $0x9e8
 2e1:	6a 02                	push   $0x2
 2e3:	e8 a8 03 00 00       	call   690 <printf>
        exit();
 2e8:	e8 55 02 00 00       	call   542 <exit>
 2ed:	66 90                	xchg   %ax,%ax
 2ef:	90                   	nop

000002f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 45 08             	mov    0x8(%ebp),%eax
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2fa:	89 c2                	mov    %eax,%edx
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 300:	83 c1 01             	add    $0x1,%ecx
 303:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 307:	83 c2 01             	add    $0x1,%edx
 30a:	84 db                	test   %bl,%bl
 30c:	88 5a ff             	mov    %bl,-0x1(%edx)
 30f:	75 ef                	jne    300 <strcpy+0x10>
    ;
  return os;
}
 311:	5b                   	pop    %ebx
 312:	5d                   	pop    %ebp
 313:	c3                   	ret    
 314:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 31a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000320 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	8b 55 08             	mov    0x8(%ebp),%edx
 327:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 32a:	0f b6 02             	movzbl (%edx),%eax
 32d:	0f b6 19             	movzbl (%ecx),%ebx
 330:	84 c0                	test   %al,%al
 332:	75 1c                	jne    350 <strcmp+0x30>
 334:	eb 2a                	jmp    360 <strcmp+0x40>
 336:	8d 76 00             	lea    0x0(%esi),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 340:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 343:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 346:	83 c1 01             	add    $0x1,%ecx
 349:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 34c:	84 c0                	test   %al,%al
 34e:	74 10                	je     360 <strcmp+0x40>
 350:	38 d8                	cmp    %bl,%al
 352:	74 ec                	je     340 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 354:	29 d8                	sub    %ebx,%eax
}
 356:	5b                   	pop    %ebx
 357:	5d                   	pop    %ebp
 358:	c3                   	ret    
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 360:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 362:	29 d8                	sub    %ebx,%eax
}
 364:	5b                   	pop    %ebx
 365:	5d                   	pop    %ebp
 366:	c3                   	ret    
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 39 00             	cmpb   $0x0,(%ecx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 d2                	xor    %edx,%edx
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c2 01             	add    $0x1,%edx
 383:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 387:	89 d0                	mov    %edx,%eax
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 390:	31 c0                	xor    %eax,%eax
}
 392:	5d                   	pop    %ebp
 393:	c3                   	ret    
 394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 39a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	89 d0                	mov    %edx,%eax
 3b4:	5f                   	pop    %edi
 3b5:	5d                   	pop    %ebp
 3b6:	c3                   	ret    
 3b7:	89 f6                	mov    %esi,%esi
 3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx
 3c4:	8b 45 08             	mov    0x8(%ebp),%eax
 3c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	74 1d                	je     3ee <strchr+0x2e>
    if(*s == c)
 3d1:	38 d3                	cmp    %dl,%bl
 3d3:	89 d9                	mov    %ebx,%ecx
 3d5:	75 0d                	jne    3e4 <strchr+0x24>
 3d7:	eb 17                	jmp    3f0 <strchr+0x30>
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3e0:	38 ca                	cmp    %cl,%dl
 3e2:	74 0c                	je     3f0 <strchr+0x30>
  for(; *s; s++)
 3e4:	83 c0 01             	add    $0x1,%eax
 3e7:	0f b6 10             	movzbl (%eax),%edx
 3ea:	84 d2                	test   %dl,%dl
 3ec:	75 f2                	jne    3e0 <strchr+0x20>
      return (char*)s;
  return 0;
 3ee:	31 c0                	xor    %eax,%eax
}
 3f0:	5b                   	pop    %ebx
 3f1:	5d                   	pop    %ebp
 3f2:	c3                   	ret    
 3f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
 405:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 406:	31 f6                	xor    %esi,%esi
 408:	89 f3                	mov    %esi,%ebx
{
 40a:	83 ec 1c             	sub    $0x1c,%esp
 40d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 410:	eb 2f                	jmp    441 <gets+0x41>
 412:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 418:	8d 45 e7             	lea    -0x19(%ebp),%eax
 41b:	83 ec 04             	sub    $0x4,%esp
 41e:	6a 01                	push   $0x1
 420:	50                   	push   %eax
 421:	6a 00                	push   $0x0
 423:	e8 32 01 00 00       	call   55a <read>
    if(cc < 1)
 428:	83 c4 10             	add    $0x10,%esp
 42b:	85 c0                	test   %eax,%eax
 42d:	7e 1c                	jle    44b <gets+0x4b>
      break;
    buf[i++] = c;
 42f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 433:	83 c7 01             	add    $0x1,%edi
 436:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 439:	3c 0a                	cmp    $0xa,%al
 43b:	74 23                	je     460 <gets+0x60>
 43d:	3c 0d                	cmp    $0xd,%al
 43f:	74 1f                	je     460 <gets+0x60>
  for(i=0; i+1 < max; ){
 441:	83 c3 01             	add    $0x1,%ebx
 444:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 447:	89 fe                	mov    %edi,%esi
 449:	7c cd                	jl     418 <gets+0x18>
 44b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 44d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 450:	c6 03 00             	movb   $0x0,(%ebx)
}
 453:	8d 65 f4             	lea    -0xc(%ebp),%esp
 456:	5b                   	pop    %ebx
 457:	5e                   	pop    %esi
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	90                   	nop
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 460:	8b 75 08             	mov    0x8(%ebp),%esi
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	01 de                	add    %ebx,%esi
 468:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 46a:	c6 03 00             	movb   $0x0,(%ebx)
}
 46d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 470:	5b                   	pop    %ebx
 471:	5e                   	pop    %esi
 472:	5f                   	pop    %edi
 473:	5d                   	pop    %ebp
 474:	c3                   	ret    
 475:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <stat>:

int
stat(const char *n, struct stat *st)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	56                   	push   %esi
 484:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 485:	83 ec 08             	sub    $0x8,%esp
 488:	6a 00                	push   $0x0
 48a:	ff 75 08             	pushl  0x8(%ebp)
 48d:	e8 f0 00 00 00       	call   582 <open>
  if(fd < 0)
 492:	83 c4 10             	add    $0x10,%esp
 495:	85 c0                	test   %eax,%eax
 497:	78 27                	js     4c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 499:	83 ec 08             	sub    $0x8,%esp
 49c:	ff 75 0c             	pushl  0xc(%ebp)
 49f:	89 c3                	mov    %eax,%ebx
 4a1:	50                   	push   %eax
 4a2:	e8 f3 00 00 00       	call   59a <fstat>
  close(fd);
 4a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4aa:	89 c6                	mov    %eax,%esi
  close(fd);
 4ac:	e8 b9 00 00 00       	call   56a <close>
  return r;
 4b1:	83 c4 10             	add    $0x10,%esp
}
 4b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4b7:	89 f0                	mov    %esi,%eax
 4b9:	5b                   	pop    %ebx
 4ba:	5e                   	pop    %esi
 4bb:	5d                   	pop    %ebp
 4bc:	c3                   	ret    
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4c5:	eb ed                	jmp    4b4 <stat+0x34>
 4c7:	89 f6                	mov    %esi,%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <atoi>:

int
atoi(const char *s)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4d7:	0f be 11             	movsbl (%ecx),%edx
 4da:	8d 42 d0             	lea    -0x30(%edx),%eax
 4dd:	3c 09                	cmp    $0x9,%al
  n = 0;
 4df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 4e4:	77 1f                	ja     505 <atoi+0x35>
 4e6:	8d 76 00             	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 4f0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4f3:	83 c1 01             	add    $0x1,%ecx
 4f6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 4fa:	0f be 11             	movsbl (%ecx),%edx
 4fd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 500:	80 fb 09             	cmp    $0x9,%bl
 503:	76 eb                	jbe    4f0 <atoi+0x20>
  return n;
}
 505:	5b                   	pop    %ebx
 506:	5d                   	pop    %ebp
 507:	c3                   	ret    
 508:	90                   	nop
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000510 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
 515:	8b 5d 10             	mov    0x10(%ebp),%ebx
 518:	8b 45 08             	mov    0x8(%ebp),%eax
 51b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 51e:	85 db                	test   %ebx,%ebx
 520:	7e 14                	jle    536 <memmove+0x26>
 522:	31 d2                	xor    %edx,%edx
 524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 528:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 52c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 52f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 532:	39 d3                	cmp    %edx,%ebx
 534:	75 f2                	jne    528 <memmove+0x18>
  return vdst;
}
 536:	5b                   	pop    %ebx
 537:	5e                   	pop    %esi
 538:	5d                   	pop    %ebp
 539:	c3                   	ret    

0000053a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 53a:	b8 01 00 00 00       	mov    $0x1,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <exit>:
SYSCALL(exit)
 542:	b8 02 00 00 00       	mov    $0x2,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <wait>:
SYSCALL(wait)
 54a:	b8 03 00 00 00       	mov    $0x3,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <pipe>:
SYSCALL(pipe)
 552:	b8 04 00 00 00       	mov    $0x4,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <read>:
SYSCALL(read)
 55a:	b8 05 00 00 00       	mov    $0x5,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <write>:
SYSCALL(write)
 562:	b8 10 00 00 00       	mov    $0x10,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <close>:
SYSCALL(close)
 56a:	b8 15 00 00 00       	mov    $0x15,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <kill>:
SYSCALL(kill)
 572:	b8 06 00 00 00       	mov    $0x6,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <exec>:
SYSCALL(exec)
 57a:	b8 07 00 00 00       	mov    $0x7,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <open>:
SYSCALL(open)
 582:	b8 0f 00 00 00       	mov    $0xf,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <mknod>:
SYSCALL(mknod)
 58a:	b8 11 00 00 00       	mov    $0x11,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <unlink>:
SYSCALL(unlink)
 592:	b8 12 00 00 00       	mov    $0x12,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <fstat>:
SYSCALL(fstat)
 59a:	b8 08 00 00 00       	mov    $0x8,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <link>:
SYSCALL(link)
 5a2:	b8 13 00 00 00       	mov    $0x13,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <mkdir>:
SYSCALL(mkdir)
 5aa:	b8 14 00 00 00       	mov    $0x14,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <chdir>:
SYSCALL(chdir)
 5b2:	b8 09 00 00 00       	mov    $0x9,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <dup>:
SYSCALL(dup)
 5ba:	b8 0a 00 00 00       	mov    $0xa,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <getpid>:
SYSCALL(getpid)
 5c2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <sbrk>:
SYSCALL(sbrk)
 5ca:	b8 0c 00 00 00       	mov    $0xc,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <sleep>:
SYSCALL(sleep)
 5d2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <uptime>:
SYSCALL(uptime)
 5da:	b8 0e 00 00 00       	mov    $0xe,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <chmod>:
SYSCALL(chmod)
 5e2:	b8 16 00 00 00       	mov    $0x16,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    
 5ea:	66 90                	xchg   %ax,%ax
 5ec:	66 90                	xchg   %ax,%ax
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5f9:	85 d2                	test   %edx,%edx
{
 5fb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5fe:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 600:	79 76                	jns    678 <printint+0x88>
 602:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 606:	74 70                	je     678 <printint+0x88>
    x = -xx;
 608:	f7 d8                	neg    %eax
    neg = 1;
 60a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 611:	31 f6                	xor    %esi,%esi
 613:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 616:	eb 0a                	jmp    622 <printint+0x32>
 618:	90                   	nop
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 620:	89 fe                	mov    %edi,%esi
 622:	31 d2                	xor    %edx,%edx
 624:	8d 7e 01             	lea    0x1(%esi),%edi
 627:	f7 f1                	div    %ecx
 629:	0f b6 92 58 0a 00 00 	movzbl 0xa58(%edx),%edx
  }while((x /= base) != 0);
 630:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 632:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 635:	75 e9                	jne    620 <printint+0x30>
  if(neg)
 637:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 63a:	85 c0                	test   %eax,%eax
 63c:	74 08                	je     646 <printint+0x56>
    buf[i++] = '-';
 63e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 643:	8d 7e 02             	lea    0x2(%esi),%edi
 646:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 64a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
 650:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 653:	83 ec 04             	sub    $0x4,%esp
 656:	83 ee 01             	sub    $0x1,%esi
 659:	6a 01                	push   $0x1
 65b:	53                   	push   %ebx
 65c:	57                   	push   %edi
 65d:	88 45 d7             	mov    %al,-0x29(%ebp)
 660:	e8 fd fe ff ff       	call   562 <write>

  while(--i >= 0)
 665:	83 c4 10             	add    $0x10,%esp
 668:	39 de                	cmp    %ebx,%esi
 66a:	75 e4                	jne    650 <printint+0x60>
    putc(fd, buf[i]);
}
 66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66f:	5b                   	pop    %ebx
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret    
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 678:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 67f:	eb 90                	jmp    611 <printint+0x21>
 681:	eb 0d                	jmp    690 <printf>
 683:	90                   	nop
 684:	90                   	nop
 685:	90                   	nop
 686:	90                   	nop
 687:	90                   	nop
 688:	90                   	nop
 689:	90                   	nop
 68a:	90                   	nop
 68b:	90                   	nop
 68c:	90                   	nop
 68d:	90                   	nop
 68e:	90                   	nop
 68f:	90                   	nop

00000690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	8b 75 0c             	mov    0xc(%ebp),%esi
 69c:	0f b6 1e             	movzbl (%esi),%ebx
 69f:	84 db                	test   %bl,%bl
 6a1:	0f 84 b3 00 00 00    	je     75a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 6a7:	8d 45 10             	lea    0x10(%ebp),%eax
 6aa:	83 c6 01             	add    $0x1,%esi
  state = 0;
 6ad:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 6af:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6b2:	eb 2f                	jmp    6e3 <printf+0x53>
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	0f 84 a7 00 00 00    	je     768 <printf+0xd8>
  write(fd, &c, 1);
 6c1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6c4:	83 ec 04             	sub    $0x4,%esp
 6c7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6ca:	6a 01                	push   $0x1
 6cc:	50                   	push   %eax
 6cd:	ff 75 08             	pushl  0x8(%ebp)
 6d0:	e8 8d fe ff ff       	call   562 <write>
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6db:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6df:	84 db                	test   %bl,%bl
 6e1:	74 77                	je     75a <printf+0xca>
    if(state == 0){
 6e3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6e5:	0f be cb             	movsbl %bl,%ecx
 6e8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6eb:	74 cb                	je     6b8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6ed:	83 ff 25             	cmp    $0x25,%edi
 6f0:	75 e6                	jne    6d8 <printf+0x48>
      if(c == 'd'){
 6f2:	83 f8 64             	cmp    $0x64,%eax
 6f5:	0f 84 05 01 00 00    	je     800 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6fb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 701:	83 f9 70             	cmp    $0x70,%ecx
 704:	74 72                	je     778 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 706:	83 f8 73             	cmp    $0x73,%eax
 709:	0f 84 99 00 00 00    	je     7a8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 70f:	83 f8 63             	cmp    $0x63,%eax
 712:	0f 84 08 01 00 00    	je     820 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	0f 84 ef 00 00 00    	je     810 <printf+0x180>
  write(fd, &c, 1);
 721:	8d 45 e7             	lea    -0x19(%ebp),%eax
 724:	83 ec 04             	sub    $0x4,%esp
 727:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 72b:	6a 01                	push   $0x1
 72d:	50                   	push   %eax
 72e:	ff 75 08             	pushl  0x8(%ebp)
 731:	e8 2c fe ff ff       	call   562 <write>
 736:	83 c4 0c             	add    $0xc,%esp
 739:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 73c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 73f:	6a 01                	push   $0x1
 741:	50                   	push   %eax
 742:	ff 75 08             	pushl  0x8(%ebp)
 745:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 748:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 74a:	e8 13 fe ff ff       	call   562 <write>
  for(i = 0; fmt[i]; i++){
 74f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 753:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 756:	84 db                	test   %bl,%bl
 758:	75 89                	jne    6e3 <printf+0x53>
    }
  }
}
 75a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75d:	5b                   	pop    %ebx
 75e:	5e                   	pop    %esi
 75f:	5f                   	pop    %edi
 760:	5d                   	pop    %ebp
 761:	c3                   	ret    
 762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 768:	bf 25 00 00 00       	mov    $0x25,%edi
 76d:	e9 66 ff ff ff       	jmp    6d8 <printf+0x48>
 772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 778:	83 ec 0c             	sub    $0xc,%esp
 77b:	b9 10 00 00 00       	mov    $0x10,%ecx
 780:	6a 00                	push   $0x0
 782:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 785:	8b 45 08             	mov    0x8(%ebp),%eax
 788:	8b 17                	mov    (%edi),%edx
 78a:	e8 61 fe ff ff       	call   5f0 <printint>
        ap++;
 78f:	89 f8                	mov    %edi,%eax
 791:	83 c4 10             	add    $0x10,%esp
      state = 0;
 794:	31 ff                	xor    %edi,%edi
        ap++;
 796:	83 c0 04             	add    $0x4,%eax
 799:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 79c:	e9 37 ff ff ff       	jmp    6d8 <printf+0x48>
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7ab:	8b 08                	mov    (%eax),%ecx
        ap++;
 7ad:	83 c0 04             	add    $0x4,%eax
 7b0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7b3:	85 c9                	test   %ecx,%ecx
 7b5:	0f 84 8e 00 00 00    	je     849 <printf+0x1b9>
        while(*s != 0){
 7bb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7be:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7c0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7c2:	84 c0                	test   %al,%al
 7c4:	0f 84 0e ff ff ff    	je     6d8 <printf+0x48>
 7ca:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7cd:	89 de                	mov    %ebx,%esi
 7cf:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7d2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7d5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7d8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7db:	83 c6 01             	add    $0x1,%esi
 7de:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7e1:	6a 01                	push   $0x1
 7e3:	57                   	push   %edi
 7e4:	53                   	push   %ebx
 7e5:	e8 78 fd ff ff       	call   562 <write>
        while(*s != 0){
 7ea:	0f b6 06             	movzbl (%esi),%eax
 7ed:	83 c4 10             	add    $0x10,%esp
 7f0:	84 c0                	test   %al,%al
 7f2:	75 e4                	jne    7d8 <printf+0x148>
 7f4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7f7:	31 ff                	xor    %edi,%edi
 7f9:	e9 da fe ff ff       	jmp    6d8 <printf+0x48>
 7fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 0a 00 00 00       	mov    $0xa,%ecx
 808:	6a 01                	push   $0x1
 80a:	e9 73 ff ff ff       	jmp    782 <printf+0xf2>
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 816:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 819:	6a 01                	push   $0x1
 81b:	e9 21 ff ff ff       	jmp    741 <printf+0xb1>
        putc(fd, *ap);
 820:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 823:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 826:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 828:	6a 01                	push   $0x1
        ap++;
 82a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 82d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 830:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 833:	50                   	push   %eax
 834:	ff 75 08             	pushl  0x8(%ebp)
 837:	e8 26 fd ff ff       	call   562 <write>
        ap++;
 83c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 83f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 842:	31 ff                	xor    %edi,%edi
 844:	e9 8f fe ff ff       	jmp    6d8 <printf+0x48>
          s = "(null)";
 849:	bb 50 0a 00 00       	mov    $0xa50,%ebx
        while(*s != 0){
 84e:	b8 28 00 00 00       	mov    $0x28,%eax
 853:	e9 72 ff ff ff       	jmp    7ca <printf+0x13a>
 858:	66 90                	xchg   %ax,%ax
 85a:	66 90                	xchg   %ax,%ax
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 40 0d 00 00       	mov    0xd40,%eax
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 86e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 878:	39 c8                	cmp    %ecx,%eax
 87a:	8b 10                	mov    (%eax),%edx
 87c:	73 32                	jae    8b0 <free+0x50>
 87e:	39 d1                	cmp    %edx,%ecx
 880:	72 04                	jb     886 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 882:	39 d0                	cmp    %edx,%eax
 884:	72 32                	jb     8b8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 886:	8b 73 fc             	mov    -0x4(%ebx),%esi
 889:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88c:	39 fa                	cmp    %edi,%edx
 88e:	74 30                	je     8c0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 890:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 893:	8b 50 04             	mov    0x4(%eax),%edx
 896:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 899:	39 f1                	cmp    %esi,%ecx
 89b:	74 3a                	je     8d7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 89d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 89f:	a3 40 0d 00 00       	mov    %eax,0xd40
}
 8a4:	5b                   	pop    %ebx
 8a5:	5e                   	pop    %esi
 8a6:	5f                   	pop    %edi
 8a7:	5d                   	pop    %ebp
 8a8:	c3                   	ret    
 8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b0:	39 d0                	cmp    %edx,%eax
 8b2:	72 04                	jb     8b8 <free+0x58>
 8b4:	39 d1                	cmp    %edx,%ecx
 8b6:	72 ce                	jb     886 <free+0x26>
{
 8b8:	89 d0                	mov    %edx,%eax
 8ba:	eb bc                	jmp    878 <free+0x18>
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8c0:	03 72 04             	add    0x4(%edx),%esi
 8c3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c6:	8b 10                	mov    (%eax),%edx
 8c8:	8b 12                	mov    (%edx),%edx
 8ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8cd:	8b 50 04             	mov    0x4(%eax),%edx
 8d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d3:	39 f1                	cmp    %esi,%ecx
 8d5:	75 c6                	jne    89d <free+0x3d>
    p->s.size += bp->s.size;
 8d7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8da:	a3 40 0d 00 00       	mov    %eax,0xd40
    p->s.size += bp->s.size;
 8df:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8e2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8e5:	89 10                	mov    %edx,(%eax)
}
 8e7:	5b                   	pop    %ebx
 8e8:	5e                   	pop    %esi
 8e9:	5f                   	pop    %edi
 8ea:	5d                   	pop    %ebp
 8eb:	c3                   	ret    
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 15 40 0d 00 00    	mov    0xd40,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 78 07             	lea    0x7(%eax),%edi
 905:	c1 ef 03             	shr    $0x3,%edi
 908:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 90b:	85 d2                	test   %edx,%edx
 90d:	0f 84 9d 00 00 00    	je     9b0 <malloc+0xc0>
 913:	8b 02                	mov    (%edx),%eax
 915:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 918:	39 cf                	cmp    %ecx,%edi
 91a:	76 6c                	jbe    988 <malloc+0x98>
 91c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 922:	bb 00 10 00 00       	mov    $0x1000,%ebx
 927:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 92a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 931:	eb 0e                	jmp    941 <malloc+0x51>
 933:	90                   	nop
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 938:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 93a:	8b 48 04             	mov    0x4(%eax),%ecx
 93d:	39 f9                	cmp    %edi,%ecx
 93f:	73 47                	jae    988 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 941:	39 05 40 0d 00 00    	cmp    %eax,0xd40
 947:	89 c2                	mov    %eax,%edx
 949:	75 ed                	jne    938 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 94b:	83 ec 0c             	sub    $0xc,%esp
 94e:	56                   	push   %esi
 94f:	e8 76 fc ff ff       	call   5ca <sbrk>
  if(p == (char*)-1)
 954:	83 c4 10             	add    $0x10,%esp
 957:	83 f8 ff             	cmp    $0xffffffff,%eax
 95a:	74 1c                	je     978 <malloc+0x88>
  hp->s.size = nu;
 95c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 95f:	83 ec 0c             	sub    $0xc,%esp
 962:	83 c0 08             	add    $0x8,%eax
 965:	50                   	push   %eax
 966:	e8 f5 fe ff ff       	call   860 <free>
  return freep;
 96b:	8b 15 40 0d 00 00    	mov    0xd40,%edx
      if((p = morecore(nunits)) == 0)
 971:	83 c4 10             	add    $0x10,%esp
 974:	85 d2                	test   %edx,%edx
 976:	75 c0                	jne    938 <malloc+0x48>
        return 0;
  }
}
 978:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 97b:	31 c0                	xor    %eax,%eax
}
 97d:	5b                   	pop    %ebx
 97e:	5e                   	pop    %esi
 97f:	5f                   	pop    %edi
 980:	5d                   	pop    %ebp
 981:	c3                   	ret    
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 988:	39 cf                	cmp    %ecx,%edi
 98a:	74 54                	je     9e0 <malloc+0xf0>
        p->s.size -= nunits;
 98c:	29 f9                	sub    %edi,%ecx
 98e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 991:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 994:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 997:	89 15 40 0d 00 00    	mov    %edx,0xd40
}
 99d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9a0:	83 c0 08             	add    $0x8,%eax
}
 9a3:	5b                   	pop    %ebx
 9a4:	5e                   	pop    %esi
 9a5:	5f                   	pop    %edi
 9a6:	5d                   	pop    %ebp
 9a7:	c3                   	ret    
 9a8:	90                   	nop
 9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9b0:	c7 05 40 0d 00 00 44 	movl   $0xd44,0xd40
 9b7:	0d 00 00 
 9ba:	c7 05 44 0d 00 00 44 	movl   $0xd44,0xd44
 9c1:	0d 00 00 
    base.s.size = 0;
 9c4:	b8 44 0d 00 00       	mov    $0xd44,%eax
 9c9:	c7 05 48 0d 00 00 00 	movl   $0x0,0xd48
 9d0:	00 00 00 
 9d3:	e9 44 ff ff ff       	jmp    91c <malloc+0x2c>
 9d8:	90                   	nop
 9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 08                	mov    (%eax),%ecx
 9e2:	89 0a                	mov    %ecx,(%edx)
 9e4:	eb b1                	jmp    997 <malloc+0xa7>
