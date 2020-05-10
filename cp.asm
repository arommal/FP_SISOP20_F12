
_cp:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    close(fd);
    free(buffer);
    free(from2);
    free(to2);
}
int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
    if (argc < 2){
   f:	83 39 01             	cmpl   $0x1,(%ecx)
int main(int argc, char *argv[]){
  12:	8b 59 04             	mov    0x4(%ecx),%ebx
    if (argc < 2){
  15:	7e 72                	jle    89 <main+0x89>
        printf(2,"Argumen kurang\n");
        exit();
    }

    if (argv[1][0]=='*'){
  17:	8b 43 04             	mov    0x4(%ebx),%eax
  1a:	80 38 2a             	cmpb   $0x2a,(%eax)
  1d:	74 48                	je     67 <main+0x67>
        copySmua(argv[2]);
    }

    else if (strcmp(argv[1],"-R")==0 || strcmp(argv[1],"-r")==0){
  1f:	83 ec 08             	sub    $0x8,%esp
  22:	68 74 10 00 00       	push   $0x1074
  27:	50                   	push   %eax
  28:	e8 03 09 00 00       	call   930 <strcmp>
  2d:	83 c4 10             	add    $0x10,%esp
  30:	85 c0                	test   %eax,%eax
  32:	74 16                	je     4a <main+0x4a>
  34:	52                   	push   %edx
  35:	52                   	push   %edx
  36:	68 77 10 00 00       	push   $0x1077
  3b:	ff 73 04             	pushl  0x4(%ebx)
  3e:	e8 ed 08 00 00       	call   930 <strcmp>
  43:	83 c4 10             	add    $0x10,%esp
  46:	85 c0                	test   %eax,%eax
  48:	75 2d                	jne    77 <main+0x77>
        copyR(argv[2],argv[3]);
  4a:	83 ec 08             	sub    $0x8,%esp
  4d:	ff 73 0c             	pushl  0xc(%ebx)
  50:	ff 73 08             	pushl  0x8(%ebx)
  53:	e8 78 04 00 00       	call   4d0 <copyR>
  58:	83 c4 10             	add    $0x10,%esp
    else{
        
        copy(argv[1],argv[2]);
        exit();
    }
}
  5b:	8d 65 f8             	lea    -0x8(%ebp),%esp
  5e:	31 c0                	xor    %eax,%eax
  60:	59                   	pop    %ecx
  61:	5b                   	pop    %ebx
  62:	5d                   	pop    %ebp
  63:	8d 61 fc             	lea    -0x4(%ecx),%esp
  66:	c3                   	ret    
        copySmua(argv[2]);
  67:	83 ec 0c             	sub    $0xc,%esp
  6a:	ff 73 08             	pushl  0x8(%ebx)
  6d:	e8 7e 02 00 00       	call   2f0 <copySmua>
  72:	83 c4 10             	add    $0x10,%esp
  75:	eb e4                	jmp    5b <main+0x5b>
        copy(argv[1],argv[2]);
  77:	50                   	push   %eax
  78:	50                   	push   %eax
  79:	ff 73 08             	pushl  0x8(%ebx)
  7c:	ff 73 04             	pushl  0x4(%ebx)
  7f:	e8 9c 00 00 00       	call   120 <copy>
        exit();
  84:	e8 c9 0a 00 00       	call   b52 <exit>
        printf(2,"Argumen kurang\n");
  89:	51                   	push   %ecx
  8a:	51                   	push   %ecx
  8b:	68 64 10 00 00       	push   $0x1064
  90:	6a 02                	push   $0x2
  92:	e8 09 0c 00 00       	call   ca0 <printf>
        exit();
  97:	e8 b6 0a 00 00       	call   b52 <exit>
  9c:	66 90                	xchg   %ax,%ax
  9e:	66 90                	xchg   %ax,%ax

000000a0 <cekDirektori>:
int cekDirektori(char *path){
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	83 ec 30             	sub    $0x30,%esp
    int temp = open(path,O_RDONLY);
  a6:	6a 00                	push   $0x0
  a8:	ff 75 08             	pushl  0x8(%ebp)
  ab:	e8 e2 0a 00 00       	call   b92 <open>
    fstat(temp,&lol);
  b0:	5a                   	pop    %edx
  b1:	8d 55 e0             	lea    -0x20(%ebp),%edx
  b4:	59                   	pop    %ecx
  b5:	52                   	push   %edx
  b6:	50                   	push   %eax
  b7:	e8 ee 0a 00 00       	call   baa <fstat>
    if (lol.type == T_DIR) return 1;
  bc:	83 c4 10             	add    $0x10,%esp
  bf:	31 c0                	xor    %eax,%eax
  c1:	66 83 7d e0 01       	cmpw   $0x1,-0x20(%ebp)
}
  c6:	c9                   	leave  
    if (lol.type == T_DIR) return 1;
  c7:	0f 94 c0             	sete   %al
}
  ca:	c3                   	ret    
  cb:	90                   	nop
  cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000d0 <cekAda>:
int cekAda(char *path){
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	83 ec 10             	sub    $0x10,%esp
    fd = open(path, O_RDONLY);
  d6:	6a 00                	push   $0x0
  d8:	ff 75 08             	pushl  0x8(%ebp)
  db:	e8 b2 0a 00 00       	call   b92 <open>
}
  e0:	c9                   	leave  
  e1:	c3                   	ret    
  e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000000f0 <cat>:
char *cat (char * dest, const char *src){
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	53                   	push   %ebx
  f4:	83 ec 10             	sub    $0x10,%esp
  f7:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy (dest + strlen(dest), src);
  fa:	53                   	push   %ebx
  fb:	e8 80 08 00 00       	call   980 <strlen>
 100:	5a                   	pop    %edx
 101:	59                   	pop    %ecx
 102:	01 d8                	add    %ebx,%eax
 104:	ff 75 0c             	pushl  0xc(%ebp)
 107:	50                   	push   %eax
 108:	e8 f3 07 00 00       	call   900 <strcpy>
}
 10d:	89 d8                	mov    %ebx,%eax
 10f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 112:	c9                   	leave  
 113:	c3                   	ret    
 114:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 11a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000120 <copy>:
void copy(char *from, char *to){
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	56                   	push   %esi
 125:	53                   	push   %ebx
 126:	83 ec 48             	sub    $0x48,%esp
    char *buffer = (char*) malloc (512*sizeof (char));
 129:	68 00 02 00 00       	push   $0x200
 12e:	e8 cd 0d 00 00       	call   f00 <malloc>
    char *temp = (char*) malloc (512*sizeof (char)) ;
 133:	c7 04 24 00 02 00 00 	movl   $0x200,(%esp)
    char *buffer = (char*) malloc (512*sizeof (char));
 13a:	89 c3                	mov    %eax,%ebx
    char *temp = (char*) malloc (512*sizeof (char)) ;
 13c:	e8 bf 0d 00 00       	call   f00 <malloc>
 141:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    fd = open(from, O_RDONLY);
 144:	58                   	pop    %eax
 145:	5a                   	pop    %edx
 146:	6a 00                	push   $0x0
 148:	ff 75 08             	pushl  0x8(%ebp)
 14b:	e8 42 0a 00 00       	call   b92 <open>
    fd1 = open(to,0);
 150:	59                   	pop    %ecx
 151:	5e                   	pop    %esi
 152:	6a 00                	push   $0x0
 154:	ff 75 0c             	pushl  0xc(%ebp)
    fd = open(from, O_RDONLY);
 157:	89 c7                	mov    %eax,%edi
    fd1 = open(to,0);
 159:	e8 34 0a 00 00       	call   b92 <open>
    if (fd<0){
 15e:	83 c4 10             	add    $0x10,%esp
 161:	85 ff                	test   %edi,%edi
 163:	0f 88 60 01 00 00    	js     2c9 <copy+0x1a9>
    if (cekDirektori(from)){
 169:	83 ec 0c             	sub    $0xc,%esp
 16c:	ff 75 08             	pushl  0x8(%ebp)
 16f:	89 c6                	mov    %eax,%esi
 171:	e8 2a ff ff ff       	call   a0 <cekDirektori>
 176:	83 c4 10             	add    $0x10,%esp
 179:	85 c0                	test   %eax,%eax
 17b:	0f 85 5b 01 00 00    	jne    2dc <copy+0x1bc>
    if (to[strlen(to)-1]=='/') to[strlen(to)-1] =0;
 181:	83 ec 0c             	sub    $0xc,%esp
 184:	ff 75 0c             	pushl  0xc(%ebp)
 187:	e8 f4 07 00 00       	call   980 <strlen>
 18c:	8b 55 0c             	mov    0xc(%ebp),%edx
 18f:	83 c4 10             	add    $0x10,%esp
 192:	80 7c 02 ff 2f       	cmpb   $0x2f,-0x1(%edx,%eax,1)
 197:	0f 84 a3 00 00 00    	je     240 <copy+0x120>
    if (fstat(fd1,&lol)>=0){
 19d:	8d 45 d0             	lea    -0x30(%ebp),%eax
 1a0:	83 ec 08             	sub    $0x8,%esp
 1a3:	50                   	push   %eax
 1a4:	56                   	push   %esi
 1a5:	e8 00 0a 00 00       	call   baa <fstat>
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	85 c0                	test   %eax,%eax
 1af:	78 57                	js     208 <copy+0xe8>
        if (lol.type == T_DIR){
 1b1:	66 83 7d d0 01       	cmpw   $0x1,-0x30(%ebp)
 1b6:	75 1a                	jne    1d2 <copy+0xb2>
 1b8:	e9 a3 00 00 00       	jmp    260 <copy+0x140>
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
    while ((fd4=read(fd,buffer,sizeof(buffer)))>0) printf(fd1,"%s",buffer);
 1c0:	83 ec 04             	sub    $0x4,%esp
 1c3:	53                   	push   %ebx
 1c4:	68 29 10 00 00       	push   $0x1029
 1c9:	56                   	push   %esi
 1ca:	e8 d1 0a 00 00       	call   ca0 <printf>
 1cf:	83 c4 10             	add    $0x10,%esp
 1d2:	83 ec 04             	sub    $0x4,%esp
 1d5:	6a 04                	push   $0x4
 1d7:	53                   	push   %ebx
 1d8:	57                   	push   %edi
 1d9:	e8 8c 09 00 00       	call   b6a <read>
 1de:	83 c4 10             	add    $0x10,%esp
 1e1:	85 c0                	test   %eax,%eax
 1e3:	7f db                	jg     1c0 <copy+0xa0>
    free (temp);
 1e5:	83 ec 0c             	sub    $0xc,%esp
 1e8:	ff 75 c4             	pushl  -0x3c(%ebp)
 1eb:	e8 80 0c 00 00       	call   e70 <free>
    free (buffer);
 1f0:	89 1c 24             	mov    %ebx,(%esp)
 1f3:	e8 78 0c 00 00       	call   e70 <free>
    return;
 1f8:	83 c4 10             	add    $0x10,%esp
}
 1fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1fe:	5b                   	pop    %ebx
 1ff:	5e                   	pop    %esi
 200:	5f                   	pop    %edi
 201:	5d                   	pop    %ebp
 202:	c3                   	ret    
 203:	90                   	nop
 204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        close(fd1);
 208:	83 ec 0c             	sub    $0xc,%esp
 20b:	56                   	push   %esi
 20c:	e8 69 09 00 00       	call   b7a <close>
        if ((fd1=open(to, O_CREATE | O_RDWR))<0){
 211:	58                   	pop    %eax
 212:	5a                   	pop    %edx
 213:	68 02 02 00 00       	push   $0x202
 218:	ff 75 0c             	pushl  0xc(%ebp)
            if ((fd1=open(temp,O_CREATE | O_RDWR))<0){
 21b:	e8 72 09 00 00       	call   b92 <open>
 220:	83 c4 10             	add    $0x10,%esp
 223:	85 c0                	test   %eax,%eax
 225:	89 c6                	mov    %eax,%esi
 227:	79 a9                	jns    1d2 <copy+0xb2>
                printf(2,"gagal buat :(\n");
 229:	51                   	push   %ecx
 22a:	51                   	push   %ecx
 22b:	68 1a 10 00 00       	push   $0x101a
 230:	6a 02                	push   $0x2
 232:	e8 69 0a 00 00       	call   ca0 <printf>
                exit();
 237:	e8 16 09 00 00       	call   b52 <exit>
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if (to[strlen(to)-1]=='/') to[strlen(to)-1] =0;
 240:	83 ec 0c             	sub    $0xc,%esp
 243:	52                   	push   %edx
 244:	e8 37 07 00 00       	call   980 <strlen>
 249:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 24c:	83 c4 10             	add    $0x10,%esp
 24f:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
 254:	e9 44 ff ff ff       	jmp    19d <copy+0x7d>
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            mkdir(to);
 260:	83 ec 0c             	sub    $0xc,%esp
 263:	ff 75 0c             	pushl  0xc(%ebp)
 266:	e8 4f 09 00 00       	call   bba <mkdir>
	strcpy (dest + strlen(dest), src);
 26b:	58                   	pop    %eax
 26c:	ff 75 c4             	pushl  -0x3c(%ebp)
 26f:	e8 0c 07 00 00       	call   980 <strlen>
 274:	03 45 c4             	add    -0x3c(%ebp),%eax
 277:	5a                   	pop    %edx
 278:	59                   	pop    %ecx
 279:	ff 75 0c             	pushl  0xc(%ebp)
 27c:	50                   	push   %eax
 27d:	e8 7e 06 00 00       	call   900 <strcpy>
 282:	58                   	pop    %eax
 283:	ff 75 c4             	pushl  -0x3c(%ebp)
 286:	e8 f5 06 00 00       	call   980 <strlen>
 28b:	03 45 c4             	add    -0x3c(%ebp),%eax
 28e:	5a                   	pop    %edx
 28f:	59                   	pop    %ecx
 290:	68 18 10 00 00       	push   $0x1018
 295:	50                   	push   %eax
 296:	e8 65 06 00 00       	call   900 <strcpy>
 29b:	58                   	pop    %eax
 29c:	ff 75 c4             	pushl  -0x3c(%ebp)
 29f:	e8 dc 06 00 00       	call   980 <strlen>
 2a4:	03 45 c4             	add    -0x3c(%ebp),%eax
 2a7:	5a                   	pop    %edx
 2a8:	59                   	pop    %ecx
 2a9:	ff 75 08             	pushl  0x8(%ebp)
 2ac:	50                   	push   %eax
 2ad:	e8 4e 06 00 00       	call   900 <strcpy>
            close(fd1);
 2b2:	89 34 24             	mov    %esi,(%esp)
 2b5:	e8 c0 08 00 00       	call   b7a <close>
            if ((fd1=open(temp,O_CREATE | O_RDWR))<0){
 2ba:	5e                   	pop    %esi
 2bb:	58                   	pop    %eax
 2bc:	68 02 02 00 00       	push   $0x202
 2c1:	ff 75 c4             	pushl  -0x3c(%ebp)
 2c4:	e9 52 ff ff ff       	jmp    21b <copy+0xfb>
        printf(2,"file kagak ada\n");
 2c9:	50                   	push   %eax
 2ca:	50                   	push   %eax
 2cb:	68 f8 0f 00 00       	push   $0xff8
 2d0:	6a 02                	push   $0x2
 2d2:	e8 c9 09 00 00       	call   ca0 <printf>
        exit();
 2d7:	e8 76 08 00 00       	call   b52 <exit>
        printf(2,"Direktori boii\n");
 2dc:	50                   	push   %eax
 2dd:	50                   	push   %eax
 2de:	68 08 10 00 00       	push   $0x1008
 2e3:	6a 02                	push   $0x2
 2e5:	e8 b6 09 00 00       	call   ca0 <printf>
        exit();
 2ea:	e8 63 08 00 00       	call   b52 <exit>
 2ef:	90                   	nop

000002f0 <copySmua>:
void copySmua(char *to){
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	56                   	push   %esi
 2f5:	53                   	push   %ebx
 2f6:	83 ec 58             	sub    $0x58,%esp
    char *buffer = (char*) malloc (512 * sizeof(char*));
 2f9:	68 00 08 00 00       	push   $0x800
 2fe:	e8 fd 0b 00 00       	call   f00 <malloc>
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;
 303:	59                   	pop    %ecx
 304:	ff 75 08             	pushl  0x8(%ebp)
    char *buffer = (char*) malloc (512 * sizeof(char*));
 307:	89 45 b0             	mov    %eax,-0x50(%ebp)
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;
 30a:	e8 71 06 00 00       	call   980 <strlen>
 30f:	8b 55 08             	mov    0x8(%ebp),%edx
 312:	83 c4 10             	add    $0x10,%esp
 315:	80 7c 02 ff 2f       	cmpb   $0x2f,-0x1(%edx,%eax,1)
 31a:	0f 84 40 01 00 00    	je     460 <copySmua+0x170>
    int fd=open(".",0),fd1=open(to,O_RDONLY);
 320:	83 ec 08             	sub    $0x8,%esp
 323:	6a 00                	push   $0x0
 325:	68 62 10 00 00       	push   $0x1062
 32a:	e8 63 08 00 00       	call   b92 <open>
 32f:	89 c3                	mov    %eax,%ebx
 331:	58                   	pop    %eax
 332:	5a                   	pop    %edx
 333:	6a 00                	push   $0x0
 335:	ff 75 08             	pushl  0x8(%ebp)
 338:	e8 55 08 00 00       	call   b92 <open>
    if (fd<0){
 33d:	83 c4 10             	add    $0x10,%esp
 340:	85 db                	test   %ebx,%ebx
    int fd=open(".",0),fd1=open(to,O_RDONLY);
 342:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    if (fd<0){
 345:	0f 88 67 01 00 00    	js     4b2 <copySmua+0x1c2>
    if (fd1<0){
 34b:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 34e:	85 c0                	test   %eax,%eax
 350:	0f 88 49 01 00 00    	js     49f <copySmua+0x1af>
    if (fstat(fd1,&lol)<0){
 356:	8d 45 d0             	lea    -0x30(%ebp),%eax
 359:	83 ec 08             	sub    $0x8,%esp
 35c:	50                   	push   %eax
 35d:	ff 75 b4             	pushl  -0x4c(%ebp)
 360:	e8 45 08 00 00       	call   baa <fstat>
 365:	83 c4 10             	add    $0x10,%esp
 368:	85 c0                	test   %eax,%eax
 36a:	0f 88 1c 01 00 00    	js     48c <copySmua+0x19c>
        if (lol.type != T_DIR){
 370:	66 83 7d d0 01       	cmpw   $0x1,-0x30(%ebp)
 375:	0f 85 fe 00 00 00    	jne    479 <copySmua+0x189>
    strcpy(buffer, ".");
 37b:	8b 7d b0             	mov    -0x50(%ebp),%edi
 37e:	83 ec 08             	sub    $0x8,%esp
 381:	8d 75 c0             	lea    -0x40(%ebp),%esi
 384:	68 62 10 00 00       	push   $0x1062
 389:	57                   	push   %edi
 38a:	e8 71 05 00 00       	call   900 <strcpy>
	p = buffer+strlen(buffer);
 38f:	89 3c 24             	mov    %edi,(%esp)
 392:	e8 e9 05 00 00       	call   980 <strlen>
 397:	01 f8                	add    %edi,%eax
        if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
 399:	8d 7d c2             	lea    -0x3e(%ebp),%edi
    while (read(fd,&dir,sizeof(dir))==sizeof(dir)){
 39c:	83 c4 10             	add    $0x10,%esp
	*p = '/';
 39f:	c6 00 2f             	movb   $0x2f,(%eax)
	p = buffer+strlen(buffer);
 3a2:	89 45 ac             	mov    %eax,-0x54(%ebp)
	p++;
 3a5:	83 c0 01             	add    $0x1,%eax
 3a8:	89 45 a8             	mov    %eax,-0x58(%ebp)
 3ab:	90                   	nop
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while (read(fd,&dir,sizeof(dir))==sizeof(dir)){
 3b0:	83 ec 04             	sub    $0x4,%esp
 3b3:	6a 10                	push   $0x10
 3b5:	56                   	push   %esi
 3b6:	53                   	push   %ebx
 3b7:	e8 ae 07 00 00       	call   b6a <read>
 3bc:	83 c4 10             	add    $0x10,%esp
 3bf:	83 f8 10             	cmp    $0x10,%eax
 3c2:	75 7c                	jne    440 <copySmua+0x150>
        if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
 3c4:	66 83 7d c0 00       	cmpw   $0x0,-0x40(%ebp)
 3c9:	74 e5                	je     3b0 <copySmua+0xc0>
 3cb:	83 ec 08             	sub    $0x8,%esp
 3ce:	68 62 10 00 00       	push   $0x1062
 3d3:	57                   	push   %edi
 3d4:	e8 57 05 00 00       	call   930 <strcmp>
 3d9:	83 c4 10             	add    $0x10,%esp
 3dc:	85 c0                	test   %eax,%eax
 3de:	74 d0                	je     3b0 <copySmua+0xc0>
 3e0:	83 ec 08             	sub    $0x8,%esp
 3e3:	68 61 10 00 00       	push   $0x1061
 3e8:	57                   	push   %edi
 3e9:	e8 42 05 00 00       	call   930 <strcmp>
 3ee:	83 c4 10             	add    $0x10,%esp
 3f1:	85 c0                	test   %eax,%eax
 3f3:	74 bb                	je     3b0 <copySmua+0xc0>
        if (stat(dir.name,&lol)>=0 && lol.type == T_DIR) continue;
 3f5:	8d 45 d0             	lea    -0x30(%ebp),%eax
 3f8:	83 ec 08             	sub    $0x8,%esp
 3fb:	50                   	push   %eax
 3fc:	57                   	push   %edi
 3fd:	e8 8e 06 00 00       	call   a90 <stat>
 402:	83 c4 10             	add    $0x10,%esp
 405:	85 c0                	test   %eax,%eax
 407:	78 07                	js     410 <copySmua+0x120>
 409:	66 83 7d d0 01       	cmpw   $0x1,-0x30(%ebp)
 40e:	74 a0                	je     3b0 <copySmua+0xc0>
        memmove(p, dir.name, DIRSIZ);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	6a 0e                	push   $0xe
 415:	57                   	push   %edi
 416:	ff 75 a8             	pushl  -0x58(%ebp)
 419:	e8 02 07 00 00       	call   b20 <memmove>
        p[DIRSIZ]=0;
 41e:	8b 45 ac             	mov    -0x54(%ebp),%eax
 421:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
        copy(buffer,to);
 425:	5a                   	pop    %edx
 426:	59                   	pop    %ecx
 427:	ff 75 08             	pushl  0x8(%ebp)
 42a:	ff 75 b0             	pushl  -0x50(%ebp)
 42d:	e8 ee fc ff ff       	call   120 <copy>
 432:	83 c4 10             	add    $0x10,%esp
 435:	e9 76 ff ff ff       	jmp    3b0 <copySmua+0xc0>
 43a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    close(fd);
 440:	83 ec 0c             	sub    $0xc,%esp
 443:	53                   	push   %ebx
 444:	e8 31 07 00 00       	call   b7a <close>
    close(fd1);
 449:	58                   	pop    %eax
 44a:	ff 75 b4             	pushl  -0x4c(%ebp)
 44d:	e8 28 07 00 00       	call   b7a <close>
}
 452:	83 c4 10             	add    $0x10,%esp
 455:	8d 65 f4             	lea    -0xc(%ebp),%esp
 458:	5b                   	pop    %ebx
 459:	5e                   	pop    %esi
 45a:	5f                   	pop    %edi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;
 460:	83 ec 0c             	sub    $0xc,%esp
 463:	52                   	push   %edx
 464:	e8 17 05 00 00       	call   980 <strlen>
 469:	8b 4d 08             	mov    0x8(%ebp),%ecx
 46c:	83 c4 10             	add    $0x10,%esp
 46f:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
 474:	e9 a7 fe ff ff       	jmp    320 <copySmua+0x30>
            printf(2,"bukan direktori");
 479:	53                   	push   %ebx
 47a:	53                   	push   %ebx
 47b:	68 51 10 00 00       	push   $0x1051
 480:	6a 02                	push   $0x2
 482:	e8 19 08 00 00       	call   ca0 <printf>
            exit();
 487:	e8 c6 06 00 00       	call   b52 <exit>
        printf (2,"file ndabisa distat\n");
 48c:	56                   	push   %esi
 48d:	56                   	push   %esi
 48e:	68 3c 10 00 00       	push   $0x103c
 493:	6a 02                	push   $0x2
 495:	e8 06 08 00 00       	call   ca0 <printf>
        exit();
 49a:	e8 b3 06 00 00       	call   b52 <exit>
        printf (2, "file kagak ada\n");
 49f:	57                   	push   %edi
 4a0:	57                   	push   %edi
 4a1:	68 f8 0f 00 00       	push   $0xff8
 4a6:	6a 02                	push   $0x2
 4a8:	e8 f3 07 00 00       	call   ca0 <printf>
        exit();
 4ad:	e8 a0 06 00 00       	call   b52 <exit>
        printf(2,"ndabisa buka .\n");
 4b2:	50                   	push   %eax
 4b3:	50                   	push   %eax
 4b4:	68 2c 10 00 00       	push   $0x102c
 4b9:	6a 02                	push   $0x2
 4bb:	e8 e0 07 00 00       	call   ca0 <printf>
        exit();
 4c0:	e8 8d 06 00 00       	call   b52 <exit>
 4c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <copyR>:
void copyR (char* from, char* to){
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
 4d6:	83 ec 54             	sub    $0x54,%esp
 4d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if (strcmp(from, "")==0) return;
 4dc:	68 28 10 00 00       	push   $0x1028
 4e1:	53                   	push   %ebx
 4e2:	e8 49 04 00 00       	call   930 <strcmp>
 4e7:	83 c4 10             	add    $0x10,%esp
 4ea:	85 c0                	test   %eax,%eax
 4ec:	75 12                	jne    500 <copyR+0x30>
}
 4ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4f1:	5b                   	pop    %ebx
 4f2:	5e                   	pop    %esi
 4f3:	5f                   	pop    %edi
 4f4:	5d                   	pop    %ebp
 4f5:	c3                   	ret    
 4f6:	8d 76 00             	lea    0x0(%esi),%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if (strcmp(to, "")==0) return;
 500:	83 ec 08             	sub    $0x8,%esp
 503:	68 28 10 00 00       	push   $0x1028
 508:	ff 75 0c             	pushl  0xc(%ebp)
 50b:	e8 20 04 00 00       	call   930 <strcmp>
 510:	83 c4 10             	add    $0x10,%esp
 513:	85 c0                	test   %eax,%eax
 515:	74 d7                	je     4ee <copyR+0x1e>
    char *buffer = (char*) malloc (512 * sizeof(char*));
 517:	83 ec 0c             	sub    $0xc,%esp
 51a:	68 00 08 00 00       	push   $0x800
 51f:	e8 dc 09 00 00       	call   f00 <malloc>
    char *from2 = (char*)malloc(512*sizeof(char*));
 524:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
    char *buffer = (char*) malloc (512 * sizeof(char*));
 52b:	89 c7                	mov    %eax,%edi
    char *from2 = (char*)malloc(512*sizeof(char*));
 52d:	e8 ce 09 00 00       	call   f00 <malloc>
    char *to2 = (char*)malloc(512*sizeof(char*));
 532:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
    char *from2 = (char*)malloc(512*sizeof(char*));
 539:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    char *to2 = (char*)malloc(512*sizeof(char*));
 53c:	e8 bf 09 00 00       	call   f00 <malloc>
 541:	89 45 b0             	mov    %eax,-0x50(%ebp)
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 544:	58                   	pop    %eax
 545:	ff 75 0c             	pushl  0xc(%ebp)
 548:	e8 33 04 00 00       	call   980 <strlen>
 54d:	8b 55 0c             	mov    0xc(%ebp),%edx
 550:	83 c4 10             	add    $0x10,%esp
 553:	80 7c 02 ff 2f       	cmpb   $0x2f,-0x1(%edx,%eax,1)
 558:	0f 84 92 00 00 00    	je     5f0 <copyR+0x120>
    if (from[strlen(from)-1]=='/') from[strlen(from)-1]=0;
 55e:	83 ec 0c             	sub    $0xc,%esp
 561:	53                   	push   %ebx
 562:	e8 19 04 00 00       	call   980 <strlen>
 567:	83 c4 10             	add    $0x10,%esp
 56a:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 56f:	0f 84 2b 03 00 00    	je     8a0 <copyR+0x3d0>
    int fd = open(from,0);
 575:	83 ec 08             	sub    $0x8,%esp
 578:	6a 00                	push   $0x0
 57a:	53                   	push   %ebx
 57b:	e8 12 06 00 00       	call   b92 <open>
    if (fd<0){
 580:	83 c4 10             	add    $0x10,%esp
 583:	85 c0                	test   %eax,%eax
    int fd = open(from,0);
 585:	89 c6                	mov    %eax,%esi
    if (fd<0){
 587:	0f 88 47 03 00 00    	js     8d4 <copyR+0x404>
    if (fstat(fd,&lol)<0){
 58d:	8d 45 d0             	lea    -0x30(%ebp),%eax
 590:	83 ec 08             	sub    $0x8,%esp
 593:	50                   	push   %eax
 594:	56                   	push   %esi
 595:	e8 10 06 00 00       	call   baa <fstat>
 59a:	83 c4 10             	add    $0x10,%esp
 59d:	85 c0                	test   %eax,%eax
 59f:	0f 88 42 03 00 00    	js     8e7 <copyR+0x417>
    if (lol.type == T_DIR){
 5a5:	0f b7 45 d0          	movzwl -0x30(%ebp),%eax
 5a9:	66 83 f8 01          	cmp    $0x1,%ax
 5ad:	74 61                	je     610 <copyR+0x140>
    else if (lol.type == T_FILE){
 5af:	66 83 f8 02          	cmp    $0x2,%ax
 5b3:	0f 84 07 03 00 00    	je     8c0 <copyR+0x3f0>
    close(fd);
 5b9:	83 ec 0c             	sub    $0xc,%esp
 5bc:	56                   	push   %esi
 5bd:	e8 b8 05 00 00       	call   b7a <close>
    free(buffer);
 5c2:	89 3c 24             	mov    %edi,(%esp)
 5c5:	e8 a6 08 00 00       	call   e70 <free>
    free(from2);
 5ca:	58                   	pop    %eax
 5cb:	ff 75 b4             	pushl  -0x4c(%ebp)
 5ce:	e8 9d 08 00 00       	call   e70 <free>
    free(to2);
 5d3:	5a                   	pop    %edx
 5d4:	ff 75 b0             	pushl  -0x50(%ebp)
 5d7:	e8 94 08 00 00       	call   e70 <free>
 5dc:	83 c4 10             	add    $0x10,%esp
}
 5df:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5e2:	5b                   	pop    %ebx
 5e3:	5e                   	pop    %esi
 5e4:	5f                   	pop    %edi
 5e5:	5d                   	pop    %ebp
 5e6:	c3                   	ret    
 5e7:	89 f6                	mov    %esi,%esi
 5e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 5f0:	83 ec 0c             	sub    $0xc,%esp
 5f3:	52                   	push   %edx
 5f4:	e8 87 03 00 00       	call   980 <strlen>
 5f9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 5fc:	83 c4 10             	add    $0x10,%esp
 5ff:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
 604:	e9 55 ff ff ff       	jmp    55e <copyR+0x8e>
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	strcpy (dest + strlen(dest), src);
 610:	83 ec 0c             	sub    $0xc,%esp
 613:	57                   	push   %edi
 614:	e8 67 03 00 00       	call   980 <strlen>
 619:	59                   	pop    %ecx
 61a:	5a                   	pop    %edx
 61b:	01 f8                	add    %edi,%eax
 61d:	ff 75 0c             	pushl  0xc(%ebp)
 620:	50                   	push   %eax
 621:	e8 da 02 00 00       	call   900 <strcpy>
 626:	89 3c 24             	mov    %edi,(%esp)
 629:	e8 52 03 00 00       	call   980 <strlen>
 62e:	59                   	pop    %ecx
 62f:	5a                   	pop    %edx
 630:	01 f8                	add    %edi,%eax
 632:	68 18 10 00 00       	push   $0x1018
 637:	50                   	push   %eax
 638:	e8 c3 02 00 00       	call   900 <strcpy>
 63d:	89 3c 24             	mov    %edi,(%esp)
 640:	e8 3b 03 00 00       	call   980 <strlen>
 645:	59                   	pop    %ecx
 646:	5a                   	pop    %edx
 647:	01 f8                	add    %edi,%eax
 649:	53                   	push   %ebx
 64a:	50                   	push   %eax
 64b:	e8 b0 02 00 00       	call   900 <strcpy>
        int x =mkdir(to);
 650:	59                   	pop    %ecx
 651:	ff 75 0c             	pushl  0xc(%ebp)
 654:	e8 61 05 00 00       	call   bba <mkdir>
        if (x>=0){
 659:	83 c4 10             	add    $0x10,%esp
 65c:	85 c0                	test   %eax,%eax
 65e:	0f 88 bc 01 00 00    	js     820 <copyR+0x350>
            while (read(fd,&dir, sizeof(dir))==sizeof(dir)){
 664:	8d 45 c0             	lea    -0x40(%ebp),%eax
 667:	83 ec 04             	sub    $0x4,%esp
 66a:	6a 10                	push   $0x10
 66c:	50                   	push   %eax
 66d:	56                   	push   %esi
 66e:	e8 f7 04 00 00       	call   b6a <read>
 673:	83 c4 10             	add    $0x10,%esp
 676:	83 f8 10             	cmp    $0x10,%eax
 679:	0f 85 3a ff ff ff    	jne    5b9 <copyR+0xe9>
                memset (from2,0,sizeof from2);
 67f:	83 ec 04             	sub    $0x4,%esp
 682:	6a 04                	push   $0x4
 684:	6a 00                	push   $0x0
 686:	ff 75 b4             	pushl  -0x4c(%ebp)
 689:	e8 22 03 00 00       	call   9b0 <memset>
                memset (to2, 0, sizeof to2);
 68e:	83 c4 0c             	add    $0xc,%esp
 691:	6a 04                	push   $0x4
 693:	6a 00                	push   $0x0
 695:	ff 75 b0             	pushl  -0x50(%ebp)
 698:	e8 13 03 00 00       	call   9b0 <memset>
                if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
 69d:	83 c4 10             	add    $0x10,%esp
 6a0:	66 83 7d c0 00       	cmpw   $0x0,-0x40(%ebp)
 6a5:	74 bd                	je     664 <copyR+0x194>
 6a7:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 6aa:	83 ec 08             	sub    $0x8,%esp
 6ad:	68 62 10 00 00       	push   $0x1062
 6b2:	50                   	push   %eax
 6b3:	e8 78 02 00 00       	call   930 <strcmp>
 6b8:	83 c4 10             	add    $0x10,%esp
 6bb:	85 c0                	test   %eax,%eax
 6bd:	74 a5                	je     664 <copyR+0x194>
 6bf:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 6c2:	83 ec 08             	sub    $0x8,%esp
 6c5:	68 61 10 00 00       	push   $0x1061
 6ca:	50                   	push   %eax
 6cb:	e8 60 02 00 00       	call   930 <strcmp>
 6d0:	83 c4 10             	add    $0x10,%esp
 6d3:	85 c0                	test   %eax,%eax
 6d5:	74 8d                	je     664 <copyR+0x194>
	strcpy (dest + strlen(dest), src);
 6d7:	83 ec 0c             	sub    $0xc,%esp
 6da:	ff 75 b4             	pushl  -0x4c(%ebp)
 6dd:	e8 9e 02 00 00       	call   980 <strlen>
 6e2:	03 45 b4             	add    -0x4c(%ebp),%eax
 6e5:	59                   	pop    %ecx
 6e6:	5a                   	pop    %edx
 6e7:	53                   	push   %ebx
 6e8:	50                   	push   %eax
 6e9:	e8 12 02 00 00       	call   900 <strcpy>
 6ee:	59                   	pop    %ecx
 6ef:	ff 75 b4             	pushl  -0x4c(%ebp)
 6f2:	e8 89 02 00 00       	call   980 <strlen>
 6f7:	03 45 b4             	add    -0x4c(%ebp),%eax
 6fa:	5a                   	pop    %edx
 6fb:	59                   	pop    %ecx
 6fc:	68 18 10 00 00       	push   $0x1018
 701:	50                   	push   %eax
 702:	e8 f9 01 00 00       	call   900 <strcpy>
 707:	58                   	pop    %eax
 708:	ff 75 b4             	pushl  -0x4c(%ebp)
 70b:	e8 70 02 00 00       	call   980 <strlen>
 710:	03 45 b4             	add    -0x4c(%ebp),%eax
 713:	5a                   	pop    %edx
 714:	8d 55 c2             	lea    -0x3e(%ebp),%edx
 717:	59                   	pop    %ecx
 718:	52                   	push   %edx
 719:	50                   	push   %eax
 71a:	e8 e1 01 00 00       	call   900 <strcpy>
 71f:	58                   	pop    %eax
 720:	ff 75 b0             	pushl  -0x50(%ebp)
 723:	e8 58 02 00 00       	call   980 <strlen>
 728:	03 45 b0             	add    -0x50(%ebp),%eax
 72b:	5a                   	pop    %edx
 72c:	59                   	pop    %ecx
 72d:	ff 75 0c             	pushl  0xc(%ebp)
 730:	50                   	push   %eax
 731:	e8 ca 01 00 00       	call   900 <strcpy>
 736:	58                   	pop    %eax
 737:	ff 75 b0             	pushl  -0x50(%ebp)
 73a:	e8 41 02 00 00       	call   980 <strlen>
 73f:	03 45 b0             	add    -0x50(%ebp),%eax
 742:	5a                   	pop    %edx
 743:	59                   	pop    %ecx
 744:	68 18 10 00 00       	push   $0x1018
 749:	50                   	push   %eax
 74a:	e8 b1 01 00 00       	call   900 <strcpy>
 74f:	58                   	pop    %eax
 750:	ff 75 b0             	pushl  -0x50(%ebp)
 753:	e8 28 02 00 00       	call   980 <strlen>
 758:	03 45 b0             	add    -0x50(%ebp),%eax
 75b:	5a                   	pop    %edx
 75c:	8d 55 c2             	lea    -0x3e(%ebp),%edx
 75f:	59                   	pop    %ecx
 760:	52                   	push   %edx
 761:	50                   	push   %eax
 762:	e8 99 01 00 00       	call   900 <strcpy>
                copyR(from2, to2);
 767:	58                   	pop    %eax
 768:	5a                   	pop    %edx
 769:	ff 75 b0             	pushl  -0x50(%ebp)
 76c:	ff 75 b4             	pushl  -0x4c(%ebp)
 76f:	e8 5c fd ff ff       	call   4d0 <copyR>
 774:	83 c4 10             	add    $0x10,%esp
 777:	e9 e8 fe ff ff       	jmp    664 <copyR+0x194>
	strcpy (dest + strlen(dest), src);
 77c:	83 ec 0c             	sub    $0xc,%esp
 77f:	ff 75 b4             	pushl  -0x4c(%ebp)
 782:	e8 f9 01 00 00       	call   980 <strlen>
 787:	03 45 b4             	add    -0x4c(%ebp),%eax
 78a:	59                   	pop    %ecx
 78b:	5a                   	pop    %edx
 78c:	53                   	push   %ebx
 78d:	50                   	push   %eax
 78e:	e8 6d 01 00 00       	call   900 <strcpy>
 793:	59                   	pop    %ecx
 794:	ff 75 b4             	pushl  -0x4c(%ebp)
 797:	e8 e4 01 00 00       	call   980 <strlen>
 79c:	03 45 b4             	add    -0x4c(%ebp),%eax
 79f:	5a                   	pop    %edx
 7a0:	59                   	pop    %ecx
 7a1:	68 18 10 00 00       	push   $0x1018
 7a6:	50                   	push   %eax
 7a7:	e8 54 01 00 00       	call   900 <strcpy>
 7ac:	58                   	pop    %eax
 7ad:	ff 75 b4             	pushl  -0x4c(%ebp)
 7b0:	e8 cb 01 00 00       	call   980 <strlen>
 7b5:	03 45 b4             	add    -0x4c(%ebp),%eax
 7b8:	5a                   	pop    %edx
 7b9:	8d 55 c2             	lea    -0x3e(%ebp),%edx
 7bc:	59                   	pop    %ecx
 7bd:	52                   	push   %edx
 7be:	50                   	push   %eax
 7bf:	e8 3c 01 00 00       	call   900 <strcpy>
 7c4:	58                   	pop    %eax
 7c5:	ff 75 b0             	pushl  -0x50(%ebp)
 7c8:	e8 b3 01 00 00       	call   980 <strlen>
 7cd:	03 45 b0             	add    -0x50(%ebp),%eax
 7d0:	5a                   	pop    %edx
 7d1:	59                   	pop    %ecx
 7d2:	57                   	push   %edi
 7d3:	50                   	push   %eax
 7d4:	e8 27 01 00 00       	call   900 <strcpy>
 7d9:	58                   	pop    %eax
 7da:	ff 75 b0             	pushl  -0x50(%ebp)
 7dd:	e8 9e 01 00 00       	call   980 <strlen>
 7e2:	03 45 b0             	add    -0x50(%ebp),%eax
 7e5:	5a                   	pop    %edx
 7e6:	59                   	pop    %ecx
 7e7:	68 18 10 00 00       	push   $0x1018
 7ec:	50                   	push   %eax
 7ed:	e8 0e 01 00 00       	call   900 <strcpy>
 7f2:	58                   	pop    %eax
 7f3:	ff 75 b0             	pushl  -0x50(%ebp)
 7f6:	e8 85 01 00 00       	call   980 <strlen>
 7fb:	03 45 b0             	add    -0x50(%ebp),%eax
 7fe:	5a                   	pop    %edx
 7ff:	59                   	pop    %ecx
 800:	8d 4d c2             	lea    -0x3e(%ebp),%ecx
 803:	51                   	push   %ecx
 804:	50                   	push   %eax
 805:	e8 f6 00 00 00       	call   900 <strcpy>
                copyR(from2, to2);
 80a:	58                   	pop    %eax
 80b:	5a                   	pop    %edx
 80c:	ff 75 b0             	pushl  -0x50(%ebp)
 80f:	ff 75 b4             	pushl  -0x4c(%ebp)
 812:	e8 b9 fc ff ff       	call   4d0 <copyR>
 817:	83 c4 10             	add    $0x10,%esp
 81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            while (read(fd,&dir, sizeof(dir))==sizeof(dir)){
 820:	8d 45 c0             	lea    -0x40(%ebp),%eax
 823:	83 ec 04             	sub    $0x4,%esp
 826:	6a 10                	push   $0x10
 828:	50                   	push   %eax
 829:	56                   	push   %esi
 82a:	e8 3b 03 00 00       	call   b6a <read>
 82f:	83 c4 10             	add    $0x10,%esp
 832:	83 f8 10             	cmp    $0x10,%eax
 835:	0f 85 7e fd ff ff    	jne    5b9 <copyR+0xe9>
                memset (from2,0,sizeof from2);
 83b:	83 ec 04             	sub    $0x4,%esp
 83e:	6a 04                	push   $0x4
 840:	6a 00                	push   $0x0
 842:	ff 75 b4             	pushl  -0x4c(%ebp)
 845:	e8 66 01 00 00       	call   9b0 <memset>
                memset (to2, 0, sizeof to2);
 84a:	83 c4 0c             	add    $0xc,%esp
 84d:	6a 04                	push   $0x4
 84f:	6a 00                	push   $0x0
 851:	ff 75 b0             	pushl  -0x50(%ebp)
 854:	e8 57 01 00 00       	call   9b0 <memset>
                if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
 859:	83 c4 10             	add    $0x10,%esp
 85c:	66 83 7d c0 00       	cmpw   $0x0,-0x40(%ebp)
 861:	74 bd                	je     820 <copyR+0x350>
 863:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 866:	83 ec 08             	sub    $0x8,%esp
 869:	68 62 10 00 00       	push   $0x1062
 86e:	50                   	push   %eax
 86f:	e8 bc 00 00 00       	call   930 <strcmp>
 874:	83 c4 10             	add    $0x10,%esp
 877:	85 c0                	test   %eax,%eax
 879:	74 a5                	je     820 <copyR+0x350>
 87b:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 87e:	83 ec 08             	sub    $0x8,%esp
 881:	68 61 10 00 00       	push   $0x1061
 886:	50                   	push   %eax
 887:	e8 a4 00 00 00       	call   930 <strcmp>
 88c:	83 c4 10             	add    $0x10,%esp
 88f:	85 c0                	test   %eax,%eax
 891:	74 8d                	je     820 <copyR+0x350>
 893:	e9 e4 fe ff ff       	jmp    77c <copyR+0x2ac>
 898:	90                   	nop
 899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if (from[strlen(from)-1]=='/') from[strlen(from)-1]=0;
 8a0:	83 ec 0c             	sub    $0xc,%esp
 8a3:	53                   	push   %ebx
 8a4:	e8 d7 00 00 00       	call   980 <strlen>
 8a9:	83 c4 10             	add    $0x10,%esp
 8ac:	c6 44 03 ff 00       	movb   $0x0,-0x1(%ebx,%eax,1)
 8b1:	e9 bf fc ff ff       	jmp    575 <copyR+0xa5>
 8b6:	8d 76 00             	lea    0x0(%esi),%esi
 8b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        copy(from,to);
 8c0:	83 ec 08             	sub    $0x8,%esp
 8c3:	ff 75 0c             	pushl  0xc(%ebp)
 8c6:	53                   	push   %ebx
 8c7:	e8 54 f8 ff ff       	call   120 <copy>
 8cc:	83 c4 10             	add    $0x10,%esp
 8cf:	e9 e5 fc ff ff       	jmp    5b9 <copyR+0xe9>
        printf(2,"ndabisa buka .\n");
 8d4:	56                   	push   %esi
 8d5:	56                   	push   %esi
 8d6:	68 2c 10 00 00       	push   $0x102c
 8db:	6a 02                	push   $0x2
 8dd:	e8 be 03 00 00       	call   ca0 <printf>
        exit();
 8e2:	e8 6b 02 00 00       	call   b52 <exit>
        printf (2,"file ndabisa distat\n");
 8e7:	53                   	push   %ebx
 8e8:	53                   	push   %ebx
 8e9:	68 3c 10 00 00       	push   $0x103c
 8ee:	6a 02                	push   $0x2
 8f0:	e8 ab 03 00 00       	call   ca0 <printf>
        exit();
 8f5:	e8 58 02 00 00       	call   b52 <exit>
 8fa:	66 90                	xchg   %ax,%ax
 8fc:	66 90                	xchg   %ax,%ax
 8fe:	66 90                	xchg   %ax,%ax

00000900 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	53                   	push   %ebx
 904:	8b 45 08             	mov    0x8(%ebp),%eax
 907:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 90a:	89 c2                	mov    %eax,%edx
 90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 910:	83 c1 01             	add    $0x1,%ecx
 913:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 917:	83 c2 01             	add    $0x1,%edx
 91a:	84 db                	test   %bl,%bl
 91c:	88 5a ff             	mov    %bl,-0x1(%edx)
 91f:	75 ef                	jne    910 <strcpy+0x10>
    ;
  return os;
}
 921:	5b                   	pop    %ebx
 922:	5d                   	pop    %ebp
 923:	c3                   	ret    
 924:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 92a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000930 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	53                   	push   %ebx
 934:	8b 55 08             	mov    0x8(%ebp),%edx
 937:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 93a:	0f b6 02             	movzbl (%edx),%eax
 93d:	0f b6 19             	movzbl (%ecx),%ebx
 940:	84 c0                	test   %al,%al
 942:	75 1c                	jne    960 <strcmp+0x30>
 944:	eb 2a                	jmp    970 <strcmp+0x40>
 946:	8d 76 00             	lea    0x0(%esi),%esi
 949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 950:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 953:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 956:	83 c1 01             	add    $0x1,%ecx
 959:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 95c:	84 c0                	test   %al,%al
 95e:	74 10                	je     970 <strcmp+0x40>
 960:	38 d8                	cmp    %bl,%al
 962:	74 ec                	je     950 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 964:	29 d8                	sub    %ebx,%eax
}
 966:	5b                   	pop    %ebx
 967:	5d                   	pop    %ebp
 968:	c3                   	ret    
 969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 970:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 972:	29 d8                	sub    %ebx,%eax
}
 974:	5b                   	pop    %ebx
 975:	5d                   	pop    %ebp
 976:	c3                   	ret    
 977:	89 f6                	mov    %esi,%esi
 979:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000980 <strlen>:

uint
strlen(const char *s)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 986:	80 39 00             	cmpb   $0x0,(%ecx)
 989:	74 15                	je     9a0 <strlen+0x20>
 98b:	31 d2                	xor    %edx,%edx
 98d:	8d 76 00             	lea    0x0(%esi),%esi
 990:	83 c2 01             	add    $0x1,%edx
 993:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 997:	89 d0                	mov    %edx,%eax
 999:	75 f5                	jne    990 <strlen+0x10>
    ;
  return n;
}
 99b:	5d                   	pop    %ebp
 99c:	c3                   	ret    
 99d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 9a0:	31 c0                	xor    %eax,%eax
}
 9a2:	5d                   	pop    %ebp
 9a3:	c3                   	ret    
 9a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 9aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000009b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 9b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 9ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 9bd:	89 d7                	mov    %edx,%edi
 9bf:	fc                   	cld    
 9c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 9c2:	89 d0                	mov    %edx,%eax
 9c4:	5f                   	pop    %edi
 9c5:	5d                   	pop    %ebp
 9c6:	c3                   	ret    
 9c7:	89 f6                	mov    %esi,%esi
 9c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009d0 <strchr>:

char*
strchr(const char *s, char c)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	53                   	push   %ebx
 9d4:	8b 45 08             	mov    0x8(%ebp),%eax
 9d7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 9da:	0f b6 10             	movzbl (%eax),%edx
 9dd:	84 d2                	test   %dl,%dl
 9df:	74 1d                	je     9fe <strchr+0x2e>
    if(*s == c)
 9e1:	38 d3                	cmp    %dl,%bl
 9e3:	89 d9                	mov    %ebx,%ecx
 9e5:	75 0d                	jne    9f4 <strchr+0x24>
 9e7:	eb 17                	jmp    a00 <strchr+0x30>
 9e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9f0:	38 ca                	cmp    %cl,%dl
 9f2:	74 0c                	je     a00 <strchr+0x30>
  for(; *s; s++)
 9f4:	83 c0 01             	add    $0x1,%eax
 9f7:	0f b6 10             	movzbl (%eax),%edx
 9fa:	84 d2                	test   %dl,%dl
 9fc:	75 f2                	jne    9f0 <strchr+0x20>
      return (char*)s;
  return 0;
 9fe:	31 c0                	xor    %eax,%eax
}
 a00:	5b                   	pop    %ebx
 a01:	5d                   	pop    %ebp
 a02:	c3                   	ret    
 a03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a10 <gets>:

char*
gets(char *buf, int max)
{
 a10:	55                   	push   %ebp
 a11:	89 e5                	mov    %esp,%ebp
 a13:	57                   	push   %edi
 a14:	56                   	push   %esi
 a15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 a16:	31 f6                	xor    %esi,%esi
 a18:	89 f3                	mov    %esi,%ebx
{
 a1a:	83 ec 1c             	sub    $0x1c,%esp
 a1d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 a20:	eb 2f                	jmp    a51 <gets+0x41>
 a22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 a28:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a2b:	83 ec 04             	sub    $0x4,%esp
 a2e:	6a 01                	push   $0x1
 a30:	50                   	push   %eax
 a31:	6a 00                	push   $0x0
 a33:	e8 32 01 00 00       	call   b6a <read>
    if(cc < 1)
 a38:	83 c4 10             	add    $0x10,%esp
 a3b:	85 c0                	test   %eax,%eax
 a3d:	7e 1c                	jle    a5b <gets+0x4b>
      break;
    buf[i++] = c;
 a3f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 a43:	83 c7 01             	add    $0x1,%edi
 a46:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 a49:	3c 0a                	cmp    $0xa,%al
 a4b:	74 23                	je     a70 <gets+0x60>
 a4d:	3c 0d                	cmp    $0xd,%al
 a4f:	74 1f                	je     a70 <gets+0x60>
  for(i=0; i+1 < max; ){
 a51:	83 c3 01             	add    $0x1,%ebx
 a54:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 a57:	89 fe                	mov    %edi,%esi
 a59:	7c cd                	jl     a28 <gets+0x18>
 a5b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 a5d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 a60:	c6 03 00             	movb   $0x0,(%ebx)
}
 a63:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a66:	5b                   	pop    %ebx
 a67:	5e                   	pop    %esi
 a68:	5f                   	pop    %edi
 a69:	5d                   	pop    %ebp
 a6a:	c3                   	ret    
 a6b:	90                   	nop
 a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a70:	8b 75 08             	mov    0x8(%ebp),%esi
 a73:	8b 45 08             	mov    0x8(%ebp),%eax
 a76:	01 de                	add    %ebx,%esi
 a78:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 a7a:	c6 03 00             	movb   $0x0,(%ebx)
}
 a7d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a80:	5b                   	pop    %ebx
 a81:	5e                   	pop    %esi
 a82:	5f                   	pop    %edi
 a83:	5d                   	pop    %ebp
 a84:	c3                   	ret    
 a85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a90 <stat>:

int
stat(const char *n, struct stat *st)
{
 a90:	55                   	push   %ebp
 a91:	89 e5                	mov    %esp,%ebp
 a93:	56                   	push   %esi
 a94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 a95:	83 ec 08             	sub    $0x8,%esp
 a98:	6a 00                	push   $0x0
 a9a:	ff 75 08             	pushl  0x8(%ebp)
 a9d:	e8 f0 00 00 00       	call   b92 <open>
  if(fd < 0)
 aa2:	83 c4 10             	add    $0x10,%esp
 aa5:	85 c0                	test   %eax,%eax
 aa7:	78 27                	js     ad0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 aa9:	83 ec 08             	sub    $0x8,%esp
 aac:	ff 75 0c             	pushl  0xc(%ebp)
 aaf:	89 c3                	mov    %eax,%ebx
 ab1:	50                   	push   %eax
 ab2:	e8 f3 00 00 00       	call   baa <fstat>
  close(fd);
 ab7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 aba:	89 c6                	mov    %eax,%esi
  close(fd);
 abc:	e8 b9 00 00 00       	call   b7a <close>
  return r;
 ac1:	83 c4 10             	add    $0x10,%esp
}
 ac4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 ac7:	89 f0                	mov    %esi,%eax
 ac9:	5b                   	pop    %ebx
 aca:	5e                   	pop    %esi
 acb:	5d                   	pop    %ebp
 acc:	c3                   	ret    
 acd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 ad0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 ad5:	eb ed                	jmp    ac4 <stat+0x34>
 ad7:	89 f6                	mov    %esi,%esi
 ad9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ae0 <atoi>:

int
atoi(const char *s)
{
 ae0:	55                   	push   %ebp
 ae1:	89 e5                	mov    %esp,%ebp
 ae3:	53                   	push   %ebx
 ae4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 ae7:	0f be 11             	movsbl (%ecx),%edx
 aea:	8d 42 d0             	lea    -0x30(%edx),%eax
 aed:	3c 09                	cmp    $0x9,%al
  n = 0;
 aef:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 af4:	77 1f                	ja     b15 <atoi+0x35>
 af6:	8d 76 00             	lea    0x0(%esi),%esi
 af9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 b00:	8d 04 80             	lea    (%eax,%eax,4),%eax
 b03:	83 c1 01             	add    $0x1,%ecx
 b06:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 b0a:	0f be 11             	movsbl (%ecx),%edx
 b0d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 b10:	80 fb 09             	cmp    $0x9,%bl
 b13:	76 eb                	jbe    b00 <atoi+0x20>
  return n;
}
 b15:	5b                   	pop    %ebx
 b16:	5d                   	pop    %ebp
 b17:	c3                   	ret    
 b18:	90                   	nop
 b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 b20:	55                   	push   %ebp
 b21:	89 e5                	mov    %esp,%ebp
 b23:	56                   	push   %esi
 b24:	53                   	push   %ebx
 b25:	8b 5d 10             	mov    0x10(%ebp),%ebx
 b28:	8b 45 08             	mov    0x8(%ebp),%eax
 b2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 b2e:	85 db                	test   %ebx,%ebx
 b30:	7e 14                	jle    b46 <memmove+0x26>
 b32:	31 d2                	xor    %edx,%edx
 b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 b38:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 b3c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 b3f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 b42:	39 d3                	cmp    %edx,%ebx
 b44:	75 f2                	jne    b38 <memmove+0x18>
  return vdst;
}
 b46:	5b                   	pop    %ebx
 b47:	5e                   	pop    %esi
 b48:	5d                   	pop    %ebp
 b49:	c3                   	ret    

00000b4a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 b4a:	b8 01 00 00 00       	mov    $0x1,%eax
 b4f:	cd 40                	int    $0x40
 b51:	c3                   	ret    

00000b52 <exit>:
SYSCALL(exit)
 b52:	b8 02 00 00 00       	mov    $0x2,%eax
 b57:	cd 40                	int    $0x40
 b59:	c3                   	ret    

00000b5a <wait>:
SYSCALL(wait)
 b5a:	b8 03 00 00 00       	mov    $0x3,%eax
 b5f:	cd 40                	int    $0x40
 b61:	c3                   	ret    

00000b62 <pipe>:
SYSCALL(pipe)
 b62:	b8 04 00 00 00       	mov    $0x4,%eax
 b67:	cd 40                	int    $0x40
 b69:	c3                   	ret    

00000b6a <read>:
SYSCALL(read)
 b6a:	b8 05 00 00 00       	mov    $0x5,%eax
 b6f:	cd 40                	int    $0x40
 b71:	c3                   	ret    

00000b72 <write>:
SYSCALL(write)
 b72:	b8 10 00 00 00       	mov    $0x10,%eax
 b77:	cd 40                	int    $0x40
 b79:	c3                   	ret    

00000b7a <close>:
SYSCALL(close)
 b7a:	b8 15 00 00 00       	mov    $0x15,%eax
 b7f:	cd 40                	int    $0x40
 b81:	c3                   	ret    

00000b82 <kill>:
SYSCALL(kill)
 b82:	b8 06 00 00 00       	mov    $0x6,%eax
 b87:	cd 40                	int    $0x40
 b89:	c3                   	ret    

00000b8a <exec>:
SYSCALL(exec)
 b8a:	b8 07 00 00 00       	mov    $0x7,%eax
 b8f:	cd 40                	int    $0x40
 b91:	c3                   	ret    

00000b92 <open>:
SYSCALL(open)
 b92:	b8 0f 00 00 00       	mov    $0xf,%eax
 b97:	cd 40                	int    $0x40
 b99:	c3                   	ret    

00000b9a <mknod>:
SYSCALL(mknod)
 b9a:	b8 11 00 00 00       	mov    $0x11,%eax
 b9f:	cd 40                	int    $0x40
 ba1:	c3                   	ret    

00000ba2 <unlink>:
SYSCALL(unlink)
 ba2:	b8 12 00 00 00       	mov    $0x12,%eax
 ba7:	cd 40                	int    $0x40
 ba9:	c3                   	ret    

00000baa <fstat>:
SYSCALL(fstat)
 baa:	b8 08 00 00 00       	mov    $0x8,%eax
 baf:	cd 40                	int    $0x40
 bb1:	c3                   	ret    

00000bb2 <link>:
SYSCALL(link)
 bb2:	b8 13 00 00 00       	mov    $0x13,%eax
 bb7:	cd 40                	int    $0x40
 bb9:	c3                   	ret    

00000bba <mkdir>:
SYSCALL(mkdir)
 bba:	b8 14 00 00 00       	mov    $0x14,%eax
 bbf:	cd 40                	int    $0x40
 bc1:	c3                   	ret    

00000bc2 <chdir>:
SYSCALL(chdir)
 bc2:	b8 09 00 00 00       	mov    $0x9,%eax
 bc7:	cd 40                	int    $0x40
 bc9:	c3                   	ret    

00000bca <dup>:
SYSCALL(dup)
 bca:	b8 0a 00 00 00       	mov    $0xa,%eax
 bcf:	cd 40                	int    $0x40
 bd1:	c3                   	ret    

00000bd2 <getpid>:
SYSCALL(getpid)
 bd2:	b8 0b 00 00 00       	mov    $0xb,%eax
 bd7:	cd 40                	int    $0x40
 bd9:	c3                   	ret    

00000bda <sbrk>:
SYSCALL(sbrk)
 bda:	b8 0c 00 00 00       	mov    $0xc,%eax
 bdf:	cd 40                	int    $0x40
 be1:	c3                   	ret    

00000be2 <sleep>:
SYSCALL(sleep)
 be2:	b8 0d 00 00 00       	mov    $0xd,%eax
 be7:	cd 40                	int    $0x40
 be9:	c3                   	ret    

00000bea <uptime>:
SYSCALL(uptime)
 bea:	b8 0e 00 00 00       	mov    $0xe,%eax
 bef:	cd 40                	int    $0x40
 bf1:	c3                   	ret    

00000bf2 <chmod>:
SYSCALL(chmod)
 bf2:	b8 16 00 00 00       	mov    $0x16,%eax
 bf7:	cd 40                	int    $0x40
 bf9:	c3                   	ret    
 bfa:	66 90                	xchg   %ax,%ax
 bfc:	66 90                	xchg   %ax,%ax
 bfe:	66 90                	xchg   %ax,%ax

00000c00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 c00:	55                   	push   %ebp
 c01:	89 e5                	mov    %esp,%ebp
 c03:	57                   	push   %edi
 c04:	56                   	push   %esi
 c05:	53                   	push   %ebx
 c06:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 c09:	85 d2                	test   %edx,%edx
{
 c0b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 c0e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 c10:	79 76                	jns    c88 <printint+0x88>
 c12:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 c16:	74 70                	je     c88 <printint+0x88>
    x = -xx;
 c18:	f7 d8                	neg    %eax
    neg = 1;
 c1a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 c21:	31 f6                	xor    %esi,%esi
 c23:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 c26:	eb 0a                	jmp    c32 <printint+0x32>
 c28:	90                   	nop
 c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 c30:	89 fe                	mov    %edi,%esi
 c32:	31 d2                	xor    %edx,%edx
 c34:	8d 7e 01             	lea    0x1(%esi),%edi
 c37:	f7 f1                	div    %ecx
 c39:	0f b6 92 84 10 00 00 	movzbl 0x1084(%edx),%edx
  }while((x /= base) != 0);
 c40:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 c42:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 c45:	75 e9                	jne    c30 <printint+0x30>
  if(neg)
 c47:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 c4a:	85 c0                	test   %eax,%eax
 c4c:	74 08                	je     c56 <printint+0x56>
    buf[i++] = '-';
 c4e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 c53:	8d 7e 02             	lea    0x2(%esi),%edi
 c56:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 c5a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 c5d:	8d 76 00             	lea    0x0(%esi),%esi
 c60:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 c63:	83 ec 04             	sub    $0x4,%esp
 c66:	83 ee 01             	sub    $0x1,%esi
 c69:	6a 01                	push   $0x1
 c6b:	53                   	push   %ebx
 c6c:	57                   	push   %edi
 c6d:	88 45 d7             	mov    %al,-0x29(%ebp)
 c70:	e8 fd fe ff ff       	call   b72 <write>

  while(--i >= 0)
 c75:	83 c4 10             	add    $0x10,%esp
 c78:	39 de                	cmp    %ebx,%esi
 c7a:	75 e4                	jne    c60 <printint+0x60>
    putc(fd, buf[i]);
}
 c7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 c7f:	5b                   	pop    %ebx
 c80:	5e                   	pop    %esi
 c81:	5f                   	pop    %edi
 c82:	5d                   	pop    %ebp
 c83:	c3                   	ret    
 c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 c88:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 c8f:	eb 90                	jmp    c21 <printint+0x21>
 c91:	eb 0d                	jmp    ca0 <printf>
 c93:	90                   	nop
 c94:	90                   	nop
 c95:	90                   	nop
 c96:	90                   	nop
 c97:	90                   	nop
 c98:	90                   	nop
 c99:	90                   	nop
 c9a:	90                   	nop
 c9b:	90                   	nop
 c9c:	90                   	nop
 c9d:	90                   	nop
 c9e:	90                   	nop
 c9f:	90                   	nop

00000ca0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 ca0:	55                   	push   %ebp
 ca1:	89 e5                	mov    %esp,%ebp
 ca3:	57                   	push   %edi
 ca4:	56                   	push   %esi
 ca5:	53                   	push   %ebx
 ca6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 ca9:	8b 75 0c             	mov    0xc(%ebp),%esi
 cac:	0f b6 1e             	movzbl (%esi),%ebx
 caf:	84 db                	test   %bl,%bl
 cb1:	0f 84 b3 00 00 00    	je     d6a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 cb7:	8d 45 10             	lea    0x10(%ebp),%eax
 cba:	83 c6 01             	add    $0x1,%esi
  state = 0;
 cbd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 cbf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 cc2:	eb 2f                	jmp    cf3 <printf+0x53>
 cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 cc8:	83 f8 25             	cmp    $0x25,%eax
 ccb:	0f 84 a7 00 00 00    	je     d78 <printf+0xd8>
  write(fd, &c, 1);
 cd1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 cd4:	83 ec 04             	sub    $0x4,%esp
 cd7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 cda:	6a 01                	push   $0x1
 cdc:	50                   	push   %eax
 cdd:	ff 75 08             	pushl  0x8(%ebp)
 ce0:	e8 8d fe ff ff       	call   b72 <write>
 ce5:	83 c4 10             	add    $0x10,%esp
 ce8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 ceb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 cef:	84 db                	test   %bl,%bl
 cf1:	74 77                	je     d6a <printf+0xca>
    if(state == 0){
 cf3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 cf5:	0f be cb             	movsbl %bl,%ecx
 cf8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 cfb:	74 cb                	je     cc8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 cfd:	83 ff 25             	cmp    $0x25,%edi
 d00:	75 e6                	jne    ce8 <printf+0x48>
      if(c == 'd'){
 d02:	83 f8 64             	cmp    $0x64,%eax
 d05:	0f 84 05 01 00 00    	je     e10 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 d0b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 d11:	83 f9 70             	cmp    $0x70,%ecx
 d14:	74 72                	je     d88 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 d16:	83 f8 73             	cmp    $0x73,%eax
 d19:	0f 84 99 00 00 00    	je     db8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 d1f:	83 f8 63             	cmp    $0x63,%eax
 d22:	0f 84 08 01 00 00    	je     e30 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 d28:	83 f8 25             	cmp    $0x25,%eax
 d2b:	0f 84 ef 00 00 00    	je     e20 <printf+0x180>
  write(fd, &c, 1);
 d31:	8d 45 e7             	lea    -0x19(%ebp),%eax
 d34:	83 ec 04             	sub    $0x4,%esp
 d37:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 d3b:	6a 01                	push   $0x1
 d3d:	50                   	push   %eax
 d3e:	ff 75 08             	pushl  0x8(%ebp)
 d41:	e8 2c fe ff ff       	call   b72 <write>
 d46:	83 c4 0c             	add    $0xc,%esp
 d49:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 d4c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 d4f:	6a 01                	push   $0x1
 d51:	50                   	push   %eax
 d52:	ff 75 08             	pushl  0x8(%ebp)
 d55:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 d58:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 d5a:	e8 13 fe ff ff       	call   b72 <write>
  for(i = 0; fmt[i]; i++){
 d5f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 d63:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 d66:	84 db                	test   %bl,%bl
 d68:	75 89                	jne    cf3 <printf+0x53>
    }
  }
}
 d6a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 d6d:	5b                   	pop    %ebx
 d6e:	5e                   	pop    %esi
 d6f:	5f                   	pop    %edi
 d70:	5d                   	pop    %ebp
 d71:	c3                   	ret    
 d72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 d78:	bf 25 00 00 00       	mov    $0x25,%edi
 d7d:	e9 66 ff ff ff       	jmp    ce8 <printf+0x48>
 d82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 d88:	83 ec 0c             	sub    $0xc,%esp
 d8b:	b9 10 00 00 00       	mov    $0x10,%ecx
 d90:	6a 00                	push   $0x0
 d92:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 d95:	8b 45 08             	mov    0x8(%ebp),%eax
 d98:	8b 17                	mov    (%edi),%edx
 d9a:	e8 61 fe ff ff       	call   c00 <printint>
        ap++;
 d9f:	89 f8                	mov    %edi,%eax
 da1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 da4:	31 ff                	xor    %edi,%edi
        ap++;
 da6:	83 c0 04             	add    $0x4,%eax
 da9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 dac:	e9 37 ff ff ff       	jmp    ce8 <printf+0x48>
 db1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 db8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 dbb:	8b 08                	mov    (%eax),%ecx
        ap++;
 dbd:	83 c0 04             	add    $0x4,%eax
 dc0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 dc3:	85 c9                	test   %ecx,%ecx
 dc5:	0f 84 8e 00 00 00    	je     e59 <printf+0x1b9>
        while(*s != 0){
 dcb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 dce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 dd0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 dd2:	84 c0                	test   %al,%al
 dd4:	0f 84 0e ff ff ff    	je     ce8 <printf+0x48>
 dda:	89 75 d0             	mov    %esi,-0x30(%ebp)
 ddd:	89 de                	mov    %ebx,%esi
 ddf:	8b 5d 08             	mov    0x8(%ebp),%ebx
 de2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 de5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 de8:	83 ec 04             	sub    $0x4,%esp
          s++;
 deb:	83 c6 01             	add    $0x1,%esi
 dee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 df1:	6a 01                	push   $0x1
 df3:	57                   	push   %edi
 df4:	53                   	push   %ebx
 df5:	e8 78 fd ff ff       	call   b72 <write>
        while(*s != 0){
 dfa:	0f b6 06             	movzbl (%esi),%eax
 dfd:	83 c4 10             	add    $0x10,%esp
 e00:	84 c0                	test   %al,%al
 e02:	75 e4                	jne    de8 <printf+0x148>
 e04:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 e07:	31 ff                	xor    %edi,%edi
 e09:	e9 da fe ff ff       	jmp    ce8 <printf+0x48>
 e0e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 e10:	83 ec 0c             	sub    $0xc,%esp
 e13:	b9 0a 00 00 00       	mov    $0xa,%ecx
 e18:	6a 01                	push   $0x1
 e1a:	e9 73 ff ff ff       	jmp    d92 <printf+0xf2>
 e1f:	90                   	nop
  write(fd, &c, 1);
 e20:	83 ec 04             	sub    $0x4,%esp
 e23:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 e26:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 e29:	6a 01                	push   $0x1
 e2b:	e9 21 ff ff ff       	jmp    d51 <printf+0xb1>
        putc(fd, *ap);
 e30:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 e33:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 e36:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 e38:	6a 01                	push   $0x1
        ap++;
 e3a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 e3d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 e40:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 e43:	50                   	push   %eax
 e44:	ff 75 08             	pushl  0x8(%ebp)
 e47:	e8 26 fd ff ff       	call   b72 <write>
        ap++;
 e4c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 e4f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 e52:	31 ff                	xor    %edi,%edi
 e54:	e9 8f fe ff ff       	jmp    ce8 <printf+0x48>
          s = "(null)";
 e59:	bb 7a 10 00 00       	mov    $0x107a,%ebx
        while(*s != 0){
 e5e:	b8 28 00 00 00       	mov    $0x28,%eax
 e63:	e9 72 ff ff ff       	jmp    dda <printf+0x13a>
 e68:	66 90                	xchg   %ax,%ax
 e6a:	66 90                	xchg   %ax,%ax
 e6c:	66 90                	xchg   %ax,%ax
 e6e:	66 90                	xchg   %ax,%ax

00000e70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 e70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 e71:	a1 40 14 00 00       	mov    0x1440,%eax
{
 e76:	89 e5                	mov    %esp,%ebp
 e78:	57                   	push   %edi
 e79:	56                   	push   %esi
 e7a:	53                   	push   %ebx
 e7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 e7e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 e81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 e88:	39 c8                	cmp    %ecx,%eax
 e8a:	8b 10                	mov    (%eax),%edx
 e8c:	73 32                	jae    ec0 <free+0x50>
 e8e:	39 d1                	cmp    %edx,%ecx
 e90:	72 04                	jb     e96 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 e92:	39 d0                	cmp    %edx,%eax
 e94:	72 32                	jb     ec8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 e96:	8b 73 fc             	mov    -0x4(%ebx),%esi
 e99:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 e9c:	39 fa                	cmp    %edi,%edx
 e9e:	74 30                	je     ed0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 ea0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 ea3:	8b 50 04             	mov    0x4(%eax),%edx
 ea6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ea9:	39 f1                	cmp    %esi,%ecx
 eab:	74 3a                	je     ee7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 ead:	89 08                	mov    %ecx,(%eax)
  freep = p;
 eaf:	a3 40 14 00 00       	mov    %eax,0x1440
}
 eb4:	5b                   	pop    %ebx
 eb5:	5e                   	pop    %esi
 eb6:	5f                   	pop    %edi
 eb7:	5d                   	pop    %ebp
 eb8:	c3                   	ret    
 eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ec0:	39 d0                	cmp    %edx,%eax
 ec2:	72 04                	jb     ec8 <free+0x58>
 ec4:	39 d1                	cmp    %edx,%ecx
 ec6:	72 ce                	jb     e96 <free+0x26>
{
 ec8:	89 d0                	mov    %edx,%eax
 eca:	eb bc                	jmp    e88 <free+0x18>
 ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 ed0:	03 72 04             	add    0x4(%edx),%esi
 ed3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ed6:	8b 10                	mov    (%eax),%edx
 ed8:	8b 12                	mov    (%edx),%edx
 eda:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 edd:	8b 50 04             	mov    0x4(%eax),%edx
 ee0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ee3:	39 f1                	cmp    %esi,%ecx
 ee5:	75 c6                	jne    ead <free+0x3d>
    p->s.size += bp->s.size;
 ee7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 eea:	a3 40 14 00 00       	mov    %eax,0x1440
    p->s.size += bp->s.size;
 eef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 ef2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 ef5:	89 10                	mov    %edx,(%eax)
}
 ef7:	5b                   	pop    %ebx
 ef8:	5e                   	pop    %esi
 ef9:	5f                   	pop    %edi
 efa:	5d                   	pop    %ebp
 efb:	c3                   	ret    
 efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000f00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 f00:	55                   	push   %ebp
 f01:	89 e5                	mov    %esp,%ebp
 f03:	57                   	push   %edi
 f04:	56                   	push   %esi
 f05:	53                   	push   %ebx
 f06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 f09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 f0c:	8b 15 40 14 00 00    	mov    0x1440,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 f12:	8d 78 07             	lea    0x7(%eax),%edi
 f15:	c1 ef 03             	shr    $0x3,%edi
 f18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 f1b:	85 d2                	test   %edx,%edx
 f1d:	0f 84 9d 00 00 00    	je     fc0 <malloc+0xc0>
 f23:	8b 02                	mov    (%edx),%eax
 f25:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 f28:	39 cf                	cmp    %ecx,%edi
 f2a:	76 6c                	jbe    f98 <malloc+0x98>
 f2c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 f32:	bb 00 10 00 00       	mov    $0x1000,%ebx
 f37:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 f3a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 f41:	eb 0e                	jmp    f51 <malloc+0x51>
 f43:	90                   	nop
 f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 f48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 f4a:	8b 48 04             	mov    0x4(%eax),%ecx
 f4d:	39 f9                	cmp    %edi,%ecx
 f4f:	73 47                	jae    f98 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 f51:	39 05 40 14 00 00    	cmp    %eax,0x1440
 f57:	89 c2                	mov    %eax,%edx
 f59:	75 ed                	jne    f48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 f5b:	83 ec 0c             	sub    $0xc,%esp
 f5e:	56                   	push   %esi
 f5f:	e8 76 fc ff ff       	call   bda <sbrk>
  if(p == (char*)-1)
 f64:	83 c4 10             	add    $0x10,%esp
 f67:	83 f8 ff             	cmp    $0xffffffff,%eax
 f6a:	74 1c                	je     f88 <malloc+0x88>
  hp->s.size = nu;
 f6c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 f6f:	83 ec 0c             	sub    $0xc,%esp
 f72:	83 c0 08             	add    $0x8,%eax
 f75:	50                   	push   %eax
 f76:	e8 f5 fe ff ff       	call   e70 <free>
  return freep;
 f7b:	8b 15 40 14 00 00    	mov    0x1440,%edx
      if((p = morecore(nunits)) == 0)
 f81:	83 c4 10             	add    $0x10,%esp
 f84:	85 d2                	test   %edx,%edx
 f86:	75 c0                	jne    f48 <malloc+0x48>
        return 0;
  }
}
 f88:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 f8b:	31 c0                	xor    %eax,%eax
}
 f8d:	5b                   	pop    %ebx
 f8e:	5e                   	pop    %esi
 f8f:	5f                   	pop    %edi
 f90:	5d                   	pop    %ebp
 f91:	c3                   	ret    
 f92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 f98:	39 cf                	cmp    %ecx,%edi
 f9a:	74 54                	je     ff0 <malloc+0xf0>
        p->s.size -= nunits;
 f9c:	29 f9                	sub    %edi,%ecx
 f9e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 fa1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 fa4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 fa7:	89 15 40 14 00 00    	mov    %edx,0x1440
}
 fad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 fb0:	83 c0 08             	add    $0x8,%eax
}
 fb3:	5b                   	pop    %ebx
 fb4:	5e                   	pop    %esi
 fb5:	5f                   	pop    %edi
 fb6:	5d                   	pop    %ebp
 fb7:	c3                   	ret    
 fb8:	90                   	nop
 fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 fc0:	c7 05 40 14 00 00 44 	movl   $0x1444,0x1440
 fc7:	14 00 00 
 fca:	c7 05 44 14 00 00 44 	movl   $0x1444,0x1444
 fd1:	14 00 00 
    base.s.size = 0;
 fd4:	b8 44 14 00 00       	mov    $0x1444,%eax
 fd9:	c7 05 48 14 00 00 00 	movl   $0x0,0x1448
 fe0:	00 00 00 
 fe3:	e9 44 ff ff ff       	jmp    f2c <malloc+0x2c>
 fe8:	90                   	nop
 fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 ff0:	8b 08                	mov    (%eax),%ecx
 ff2:	89 0a                	mov    %ecx,(%edx)
 ff4:	eb b1                	jmp    fa7 <malloc+0xa7>
