
_mv:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
        memmove(p, dir.name, DIRSIZ);
		p[DIRSIZ] = 0;
        move(buffer,to);
    }
}
int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
    if (argc<2){
  11:	83 39 01             	cmpl   $0x1,(%ecx)
int main(int argc, char *argv[]){
  14:	8b 41 04             	mov    0x4(%ecx),%eax
    if (argc<2){
  17:	7e 2a                	jle    43 <main+0x43>
        printf(2,"Argumen kurang\n");
        exit();
    }
    if (argv[1][0]=='*'){
  19:	8b 50 04             	mov    0x4(%eax),%edx
  1c:	8b 40 08             	mov    0x8(%eax),%eax
  1f:	80 3a 2a             	cmpb   $0x2a,(%edx)
  22:	74 11                	je     35 <main+0x35>
        moveSmua(argv[2]);
    }
    else{
        move(argv[1],argv[2]);
  24:	51                   	push   %ecx
  25:	51                   	push   %ecx
  26:	50                   	push   %eax
  27:	52                   	push   %edx
  28:	e8 a3 00 00 00       	call   d0 <move>
  2d:	83 c4 10             	add    $0x10,%esp
    }
    exit();
  30:	e8 2d 08 00 00       	call   862 <exit>
        moveSmua(argv[2]);
  35:	83 ec 0c             	sub    $0xc,%esp
  38:	50                   	push   %eax
  39:	e8 e2 04 00 00       	call   520 <moveSmua>
  3e:	83 c4 10             	add    $0x10,%esp
  41:	eb ed                	jmp    30 <main+0x30>
        printf(2,"Argumen kurang\n");
  43:	50                   	push   %eax
  44:	50                   	push   %eax
  45:	68 1d 0d 00 00       	push   $0xd1d
  4a:	6a 02                	push   $0x2
  4c:	e8 5f 09 00 00       	call   9b0 <printf>
        exit();
  51:	e8 0c 08 00 00       	call   862 <exit>
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <cat>:
char *cat (char * dest, const char *src){
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	53                   	push   %ebx
  64:	83 ec 10             	sub    $0x10,%esp
  67:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy (dest + strlen(dest), src);
  6a:	53                   	push   %ebx
  6b:	e8 20 06 00 00       	call   690 <strlen>
  70:	5a                   	pop    %edx
  71:	59                   	pop    %ecx
  72:	01 d8                	add    %ebx,%eax
  74:	ff 75 0c             	pushl  0xc(%ebp)
  77:	50                   	push   %eax
  78:	e8 93 05 00 00       	call   610 <strcpy>
}
  7d:	89 d8                	mov    %ebx,%eax
  7f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  82:	c9                   	leave  
  83:	c3                   	ret    
  84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000090 <namaFile>:
char *namaFile(char *path){
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	53                   	push   %ebx
  94:	83 ec 10             	sub    $0x10,%esp
  97:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for (i=strlen(temp); i>=0; i--) {
  9a:	53                   	push   %ebx
  9b:	e8 f0 05 00 00       	call   690 <strlen>
  a0:	83 c4 10             	add    $0x10,%esp
  a3:	85 c0                	test   %eax,%eax
  a5:	79 11                	jns    b8 <namaFile+0x28>
  a7:	eb 19                	jmp    c2 <namaFile+0x32>
  a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  b0:	83 e8 01             	sub    $0x1,%eax
  b3:	83 f8 ff             	cmp    $0xffffffff,%eax
  b6:	74 0a                	je     c2 <namaFile+0x32>
        if (temp[i]=='/') {
  b8:	80 3c 03 2f          	cmpb   $0x2f,(%ebx,%eax,1)
  bc:	75 f2                	jne    b0 <namaFile+0x20>
            nama= &temp[i+1];
  be:	8d 5c 03 01          	lea    0x1(%ebx,%eax,1),%ebx
}
  c2:	89 d8                	mov    %ebx,%eax
  c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c7:	c9                   	leave  
  c8:	c3                   	ret    
  c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000000d0 <move>:
void move(char* from, char* to){   
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	57                   	push   %edi
  d4:	56                   	push   %esi
  d5:	53                   	push   %ebx
  d6:	83 ec 54             	sub    $0x54,%esp
  d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    int fd = open(from, O_RDONLY);
  dc:	6a 00                	push   $0x0
  de:	ff 75 08             	pushl  0x8(%ebp)
  e1:	e8 bc 07 00 00       	call   8a2 <open>
    if (fd<0){
  e6:	83 c4 10             	add    $0x10,%esp
  e9:	85 c0                	test   %eax,%eax
  eb:	0f 88 0d 04 00 00    	js     4fe <move+0x42e>
  f1:	89 c6                	mov    %eax,%esi
    fstat(fd,&lol);
  f3:	8d 45 d0             	lea    -0x30(%ebp),%eax
  f6:	83 ec 08             	sub    $0x8,%esp
  f9:	50                   	push   %eax
  fa:	56                   	push   %esi
  fb:	e8 ba 07 00 00       	call   8ba <fstat>
    if (lol.type == T_DIR){
 100:	83 c4 10             	add    $0x10,%esp
 103:	66 83 7d d0 01       	cmpw   $0x1,-0x30(%ebp)
 108:	0f 84 a2 01 00 00    	je     2b0 <move+0x1e0>
        close(fd);
 10e:	83 ec 0c             	sub    $0xc,%esp
 111:	56                   	push   %esi
 112:	e8 73 07 00 00       	call   88a <close>
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 117:	89 1c 24             	mov    %ebx,(%esp)
 11a:	e8 71 05 00 00       	call   690 <strlen>
 11f:	83 c4 10             	add    $0x10,%esp
 122:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 127:	0f 84 5b 03 00 00    	je     488 <move+0x3b8>
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
 12d:	83 ec 0c             	sub    $0xc,%esp
 130:	53                   	push   %ebx
 131:	e8 5a 05 00 00       	call   690 <strlen>
 136:	8b 4d 08             	mov    0x8(%ebp),%ecx
 139:	83 c4 10             	add    $0x10,%esp
 13c:	80 7c 01 ff 2f       	cmpb   $0x2f,-0x1(%ecx,%eax,1)
 141:	0f 84 21 03 00 00    	je     468 <move+0x398>
        int fd5=open(from,0);
 147:	83 ec 08             	sub    $0x8,%esp
 14a:	6a 00                	push   $0x0
 14c:	ff 75 08             	pushl  0x8(%ebp)
 14f:	e8 4e 07 00 00       	call   8a2 <open>
        char *buf1 = (char*)malloc(512*sizeof(char*));
 154:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
        int fd5=open(from,0);
 15b:	89 c7                	mov    %eax,%edi
        char *buf1 = (char*)malloc(512*sizeof(char*));
 15d:	e8 ae 0a 00 00       	call   c10 <malloc>
        char *buf2 = (char*)malloc(512*sizeof(char*));
 162:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
        char *buf1 = (char*)malloc(512*sizeof(char*));
 169:	89 45 b4             	mov    %eax,-0x4c(%ebp)
        char *buf2 = (char*)malloc(512*sizeof(char*));
 16c:	e8 9f 0a 00 00       	call   c10 <malloc>
 171:	89 c6                	mov    %eax,%esi
        char *nama = namaFile(from);
 173:	58                   	pop    %eax
 174:	ff 75 08             	pushl  0x8(%ebp)
 177:	e8 14 ff ff ff       	call   90 <namaFile>
	strcpy (dest + strlen(dest), src);
 17c:	89 34 24             	mov    %esi,(%esp)
        char *nama = namaFile(from);
 17f:	89 45 b0             	mov    %eax,-0x50(%ebp)
	strcpy (dest + strlen(dest), src);
 182:	e8 09 05 00 00       	call   690 <strlen>
 187:	5a                   	pop    %edx
 188:	59                   	pop    %ecx
 189:	01 f0                	add    %esi,%eax
 18b:	53                   	push   %ebx
 18c:	50                   	push   %eax
 18d:	e8 7e 04 00 00       	call   610 <strcpy>
 192:	89 34 24             	mov    %esi,(%esp)
 195:	e8 f6 04 00 00       	call   690 <strlen>
 19a:	5a                   	pop    %edx
 19b:	59                   	pop    %ecx
 19c:	01 f0                	add    %esi,%eax
 19e:	68 18 0d 00 00       	push   $0xd18
 1a3:	50                   	push   %eax
 1a4:	e8 67 04 00 00       	call   610 <strcpy>
 1a9:	89 34 24             	mov    %esi,(%esp)
 1ac:	e8 df 04 00 00       	call   690 <strlen>
 1b1:	5a                   	pop    %edx
 1b2:	8b 55 b0             	mov    -0x50(%ebp),%edx
 1b5:	01 f0                	add    %esi,%eax
 1b7:	59                   	pop    %ecx
 1b8:	52                   	push   %edx
 1b9:	50                   	push   %eax
 1ba:	e8 51 04 00 00       	call   610 <strcpy>
        if (mkdir(buf2)<0){
 1bf:	89 34 24             	mov    %esi,(%esp)
 1c2:	e8 03 07 00 00       	call   8ca <mkdir>
 1c7:	83 c4 10             	add    $0x10,%esp
 1ca:	85 c0                	test   %eax,%eax
 1cc:	0f 88 6e 02 00 00    	js     440 <move+0x370>
	strcpy (dest + strlen(dest), src);
 1d2:	8b 5d b4             	mov    -0x4c(%ebp),%ebx
 1d5:	83 ec 0c             	sub    $0xc,%esp
 1d8:	53                   	push   %ebx
 1d9:	e8 b2 04 00 00       	call   690 <strlen>
 1de:	5a                   	pop    %edx
 1df:	59                   	pop    %ecx
 1e0:	01 d8                	add    %ebx,%eax
 1e2:	ff 75 08             	pushl  0x8(%ebp)
 1e5:	50                   	push   %eax
 1e6:	e8 25 04 00 00       	call   610 <strcpy>
        p = buf1+strlen(buf1);
 1eb:	89 1c 24             	mov    %ebx,(%esp)
 1ee:	e8 9d 04 00 00       	call   690 <strlen>
 1f3:	01 d8                	add    %ebx,%eax
 1f5:	8d 5d c0             	lea    -0x40(%ebp),%ebx
        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
 1f8:	83 c4 10             	add    $0x10,%esp
        *p = '/';
 1fb:	c6 00 2f             	movb   $0x2f,(%eax)
        p++;
 1fe:	83 c0 01             	add    $0x1,%eax
 201:	89 45 b0             	mov    %eax,-0x50(%ebp)
        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
 204:	83 ec 04             	sub    $0x4,%esp
 207:	6a 10                	push   $0x10
 209:	53                   	push   %ebx
 20a:	57                   	push   %edi
 20b:	e8 6a 06 00 00       	call   87a <read>
 210:	83 c4 10             	add    $0x10,%esp
 213:	83 f8 10             	cmp    $0x10,%eax
 216:	75 78                	jne    290 <move+0x1c0>
            if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")) continue;
 218:	66 83 7d c0 00       	cmpw   $0x0,-0x40(%ebp)
 21d:	74 e5                	je     204 <move+0x134>
 21f:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 222:	83 ec 08             	sub    $0x8,%esp
 225:	68 1b 0d 00 00       	push   $0xd1b
 22a:	50                   	push   %eax
 22b:	e8 10 04 00 00       	call   640 <strcmp>
 230:	83 c4 10             	add    $0x10,%esp
 233:	85 c0                	test   %eax,%eax
 235:	74 cd                	je     204 <move+0x134>
 237:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 23a:	83 ec 08             	sub    $0x8,%esp
 23d:	68 1a 0d 00 00       	push   $0xd1a
 242:	50                   	push   %eax
 243:	e8 f8 03 00 00       	call   640 <strcmp>
 248:	83 c4 10             	add    $0x10,%esp
 24b:	85 c0                	test   %eax,%eax
 24d:	75 b5                	jne    204 <move+0x134>
            memmove(p,dir.name, strlen(dir.name));
 24f:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 252:	83 ec 0c             	sub    $0xc,%esp
 255:	50                   	push   %eax
 256:	e8 35 04 00 00       	call   690 <strlen>
 25b:	83 c4 0c             	add    $0xc,%esp
 25e:	50                   	push   %eax
 25f:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 262:	50                   	push   %eax
 263:	ff 75 b0             	pushl  -0x50(%ebp)
 266:	e8 c5 05 00 00       	call   830 <memmove>
            p[strlen(dir.name)]=0;
 26b:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 26e:	89 04 24             	mov    %eax,(%esp)
 271:	e8 1a 04 00 00       	call   690 <strlen>
 276:	8b 4d b0             	mov    -0x50(%ebp),%ecx
 279:	c6 04 01 00          	movb   $0x0,(%ecx,%eax,1)
            move(buf1, buf2);
 27d:	5a                   	pop    %edx
 27e:	59                   	pop    %ecx
 27f:	56                   	push   %esi
 280:	ff 75 b4             	pushl  -0x4c(%ebp)
 283:	e8 48 fe ff ff       	call   d0 <move>
 288:	83 c4 10             	add    $0x10,%esp
 28b:	e9 74 ff ff ff       	jmp    204 <move+0x134>
        close (fd5);
 290:	83 ec 0c             	sub    $0xc,%esp
 293:	57                   	push   %edi
 294:	e8 f1 05 00 00       	call   88a <close>
        unlink(from);
 299:	58                   	pop    %eax
 29a:	ff 75 08             	pushl  0x8(%ebp)
 29d:	e8 10 06 00 00       	call   8b2 <unlink>
 2a2:	83 c4 10             	add    $0x10,%esp
}
 2a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2a8:	5b                   	pop    %ebx
 2a9:	5e                   	pop    %esi
 2aa:	5f                   	pop    %edi
 2ab:	5d                   	pop    %ebp
 2ac:	c3                   	ret    
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
        close(fd);
 2b0:	83 ec 0c             	sub    $0xc,%esp
 2b3:	56                   	push   %esi
 2b4:	e8 d1 05 00 00       	call   88a <close>
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 2b9:	89 1c 24             	mov    %ebx,(%esp)
 2bc:	e8 cf 03 00 00       	call   690 <strlen>
 2c1:	83 c4 10             	add    $0x10,%esp
 2c4:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 2c9:	0f 84 19 02 00 00    	je     4e8 <move+0x418>
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
 2cf:	83 ec 0c             	sub    $0xc,%esp
 2d2:	53                   	push   %ebx
 2d3:	e8 b8 03 00 00       	call   690 <strlen>
 2d8:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2db:	83 c4 10             	add    $0x10,%esp
 2de:	80 7c 01 ff 2f       	cmpb   $0x2f,-0x1(%ecx,%eax,1)
 2e3:	0f 84 df 01 00 00    	je     4c8 <move+0x3f8>
        int fd5=open(from,0);
 2e9:	83 ec 08             	sub    $0x8,%esp
 2ec:	6a 00                	push   $0x0
 2ee:	ff 75 08             	pushl  0x8(%ebp)
 2f1:	e8 ac 05 00 00       	call   8a2 <open>
        char *buf1 = (char*)malloc(512*sizeof(char*));
 2f6:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
        int fd5=open(from,0);
 2fd:	89 c7                	mov    %eax,%edi
        char *buf1 = (char*)malloc(512*sizeof(char*));
 2ff:	e8 0c 09 00 00       	call   c10 <malloc>
        char *buf2 = (char*)malloc(512*sizeof(char*));
 304:	c7 04 24 00 08 00 00 	movl   $0x800,(%esp)
        char *buf1 = (char*)malloc(512*sizeof(char*));
 30b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
        char *buf2 = (char*)malloc(512*sizeof(char*));
 30e:	e8 fd 08 00 00       	call   c10 <malloc>
        char *nama = namaFile(from);
 313:	59                   	pop    %ecx
 314:	ff 75 08             	pushl  0x8(%ebp)
        char *buf2 = (char*)malloc(512*sizeof(char*));
 317:	89 c6                	mov    %eax,%esi
        char *nama = namaFile(from);
 319:	e8 72 fd ff ff       	call   90 <namaFile>
	strcpy (dest + strlen(dest), src);
 31e:	89 34 24             	mov    %esi,(%esp)
        char *nama = namaFile(from);
 321:	89 45 b0             	mov    %eax,-0x50(%ebp)
	strcpy (dest + strlen(dest), src);
 324:	e8 67 03 00 00       	call   690 <strlen>
 329:	5a                   	pop    %edx
 32a:	59                   	pop    %ecx
 32b:	01 f0                	add    %esi,%eax
 32d:	53                   	push   %ebx
 32e:	50                   	push   %eax
 32f:	e8 dc 02 00 00       	call   610 <strcpy>
 334:	89 34 24             	mov    %esi,(%esp)
 337:	e8 54 03 00 00       	call   690 <strlen>
 33c:	5a                   	pop    %edx
 33d:	59                   	pop    %ecx
 33e:	01 f0                	add    %esi,%eax
 340:	68 18 0d 00 00       	push   $0xd18
 345:	50                   	push   %eax
 346:	e8 c5 02 00 00       	call   610 <strcpy>
 34b:	89 34 24             	mov    %esi,(%esp)
 34e:	e8 3d 03 00 00       	call   690 <strlen>
 353:	5a                   	pop    %edx
 354:	8b 55 b0             	mov    -0x50(%ebp),%edx
 357:	01 f0                	add    %esi,%eax
 359:	59                   	pop    %ecx
 35a:	52                   	push   %edx
 35b:	50                   	push   %eax
 35c:	e8 af 02 00 00       	call   610 <strcpy>
        if (mkdir(buf2)<0){
 361:	89 34 24             	mov    %esi,(%esp)
 364:	e8 61 05 00 00       	call   8ca <mkdir>
 369:	83 c4 10             	add    $0x10,%esp
 36c:	85 c0                	test   %eax,%eax
 36e:	0f 88 2c 01 00 00    	js     4a0 <move+0x3d0>
	strcpy (dest + strlen(dest), src);
 374:	8b 5d b4             	mov    -0x4c(%ebp),%ebx
 377:	83 ec 0c             	sub    $0xc,%esp
 37a:	53                   	push   %ebx
 37b:	e8 10 03 00 00       	call   690 <strlen>
 380:	59                   	pop    %ecx
 381:	5a                   	pop    %edx
 382:	01 d8                	add    %ebx,%eax
 384:	ff 75 08             	pushl  0x8(%ebp)
 387:	50                   	push   %eax
 388:	e8 83 02 00 00       	call   610 <strcpy>
        p = buf1+strlen(buf1);
 38d:	89 1c 24             	mov    %ebx,(%esp)
 390:	e8 fb 02 00 00       	call   690 <strlen>
 395:	01 d8                	add    %ebx,%eax
 397:	8d 5d c0             	lea    -0x40(%ebp),%ebx
        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
 39a:	83 c4 10             	add    $0x10,%esp
        *p = '/';
 39d:	c6 00 2f             	movb   $0x2f,(%eax)
        p++;
 3a0:	83 c0 01             	add    $0x1,%eax
 3a3:	89 45 b0             	mov    %eax,-0x50(%ebp)
        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
 3a6:	83 ec 04             	sub    $0x4,%esp
 3a9:	6a 10                	push   $0x10
 3ab:	53                   	push   %ebx
 3ac:	57                   	push   %edi
 3ad:	e8 c8 04 00 00       	call   87a <read>
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	83 f8 10             	cmp    $0x10,%eax
 3b8:	0f 85 d2 fe ff ff    	jne    290 <move+0x1c0>
            if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
 3be:	66 83 7d c0 00       	cmpw   $0x0,-0x40(%ebp)
 3c3:	74 e1                	je     3a6 <move+0x2d6>
 3c5:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 3c8:	83 ec 08             	sub    $0x8,%esp
 3cb:	68 1b 0d 00 00       	push   $0xd1b
 3d0:	50                   	push   %eax
 3d1:	e8 6a 02 00 00       	call   640 <strcmp>
 3d6:	83 c4 10             	add    $0x10,%esp
 3d9:	85 c0                	test   %eax,%eax
 3db:	74 c9                	je     3a6 <move+0x2d6>
 3dd:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 3e0:	83 ec 08             	sub    $0x8,%esp
 3e3:	68 1a 0d 00 00       	push   $0xd1a
 3e8:	50                   	push   %eax
 3e9:	e8 52 02 00 00       	call   640 <strcmp>
 3ee:	83 c4 10             	add    $0x10,%esp
 3f1:	85 c0                	test   %eax,%eax
 3f3:	74 b1                	je     3a6 <move+0x2d6>
            memmove(p,dir.name, strlen(dir.name));
 3f5:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 3f8:	83 ec 0c             	sub    $0xc,%esp
 3fb:	50                   	push   %eax
 3fc:	e8 8f 02 00 00       	call   690 <strlen>
 401:	83 c4 0c             	add    $0xc,%esp
 404:	50                   	push   %eax
 405:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 408:	50                   	push   %eax
 409:	ff 75 b0             	pushl  -0x50(%ebp)
 40c:	e8 1f 04 00 00       	call   830 <memmove>
            p[strlen(dir.name)]=0;
 411:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 414:	89 04 24             	mov    %eax,(%esp)
 417:	e8 74 02 00 00       	call   690 <strlen>
 41c:	8b 4d b0             	mov    -0x50(%ebp),%ecx
 41f:	c6 04 01 00          	movb   $0x0,(%ecx,%eax,1)
            move(buf1, buf2);
 423:	58                   	pop    %eax
 424:	5a                   	pop    %edx
 425:	56                   	push   %esi
 426:	ff 75 b4             	pushl  -0x4c(%ebp)
 429:	e8 a2 fc ff ff       	call   d0 <move>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	e9 70 ff ff ff       	jmp    3a6 <move+0x2d6>
 436:	8d 76 00             	lea    0x0(%esi),%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
            mkdir(to);
 440:	83 ec 0c             	sub    $0xc,%esp
 443:	53                   	push   %ebx
 444:	e8 81 04 00 00       	call   8ca <mkdir>
	strcpy (dest + strlen(dest), src);
 449:	89 34 24             	mov    %esi,(%esp)
 44c:	e8 3f 02 00 00       	call   690 <strlen>
 451:	5a                   	pop    %edx
 452:	59                   	pop    %ecx
 453:	01 f0                	add    %esi,%eax
 455:	53                   	push   %ebx
 456:	50                   	push   %eax
 457:	e8 b4 01 00 00       	call   610 <strcpy>
 45c:	83 c4 10             	add    $0x10,%esp
 45f:	e9 6e fd ff ff       	jmp    1d2 <move+0x102>
 464:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
 468:	83 ec 0c             	sub    $0xc,%esp
 46b:	53                   	push   %ebx
 46c:	e8 1f 02 00 00       	call   690 <strlen>
 471:	8b 4d 08             	mov    0x8(%ebp),%ecx
 474:	83 c4 10             	add    $0x10,%esp
 477:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
 47c:	e9 c6 fc ff ff       	jmp    147 <move+0x77>
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	53                   	push   %ebx
 48c:	e8 ff 01 00 00       	call   690 <strlen>
 491:	83 c4 10             	add    $0x10,%esp
 494:	c6 44 03 ff 00       	movb   $0x0,-0x1(%ebx,%eax,1)
 499:	e9 8f fc ff ff       	jmp    12d <move+0x5d>
 49e:	66 90                	xchg   %ax,%ax
            mkdir(to);
 4a0:	83 ec 0c             	sub    $0xc,%esp
 4a3:	53                   	push   %ebx
 4a4:	e8 21 04 00 00       	call   8ca <mkdir>
	strcpy (dest + strlen(dest), src);
 4a9:	89 34 24             	mov    %esi,(%esp)
 4ac:	e8 df 01 00 00       	call   690 <strlen>
 4b1:	59                   	pop    %ecx
 4b2:	5a                   	pop    %edx
 4b3:	01 f0                	add    %esi,%eax
 4b5:	53                   	push   %ebx
 4b6:	50                   	push   %eax
 4b7:	e8 54 01 00 00       	call   610 <strcpy>
 4bc:	83 c4 10             	add    $0x10,%esp
 4bf:	e9 b0 fe ff ff       	jmp    374 <move+0x2a4>
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
 4c8:	83 ec 0c             	sub    $0xc,%esp
 4cb:	53                   	push   %ebx
 4cc:	e8 bf 01 00 00       	call   690 <strlen>
 4d1:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4d4:	83 c4 10             	add    $0x10,%esp
 4d7:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
 4dc:	e9 08 fe ff ff       	jmp    2e9 <move+0x219>
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
 4e8:	83 ec 0c             	sub    $0xc,%esp
 4eb:	53                   	push   %ebx
 4ec:	e8 9f 01 00 00       	call   690 <strlen>
 4f1:	83 c4 10             	add    $0x10,%esp
 4f4:	c6 44 03 ff 00       	movb   $0x0,-0x1(%ebx,%eax,1)
 4f9:	e9 d1 fd ff ff       	jmp    2cf <move+0x1ff>
        printf(2,"ndaada filenya\n");
 4fe:	53                   	push   %ebx
 4ff:	53                   	push   %ebx
 500:	68 08 0d 00 00       	push   $0xd08
 505:	6a 02                	push   $0x2
 507:	e8 a4 04 00 00       	call   9b0 <printf>
        exit();
 50c:	e8 51 03 00 00       	call   862 <exit>
 511:	eb 0d                	jmp    520 <moveSmua>
 513:	90                   	nop
 514:	90                   	nop
 515:	90                   	nop
 516:	90                   	nop
 517:	90                   	nop
 518:	90                   	nop
 519:	90                   	nop
 51a:	90                   	nop
 51b:	90                   	nop
 51c:	90                   	nop
 51d:	90                   	nop
 51e:	90                   	nop
 51f:	90                   	nop

00000520 <moveSmua>:
void moveSmua(char *to){
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
 526:	83 ec 38             	sub    $0x38,%esp
    char *buffer = (char*) malloc (512*sizeof(buffer));
 529:	68 00 08 00 00       	push   $0x800
 52e:	e8 dd 06 00 00       	call   c10 <malloc>
    int fd = open(".",0);
 533:	59                   	pop    %ecx
 534:	5b                   	pop    %ebx
 535:	6a 00                	push   $0x0
 537:	68 1b 0d 00 00       	push   $0xd1b
    char *buffer = (char*) malloc (512*sizeof(buffer));
 53c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    int fd = open(".",0);
 53f:	e8 5e 03 00 00       	call   8a2 <open>
    if (fd<0) exit();
 544:	83 c4 10             	add    $0x10,%esp
 547:	85 c0                	test   %eax,%eax
 549:	0f 88 b1 00 00 00    	js     600 <moveSmua+0xe0>
    strcpy(buffer, ".");
 54f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 552:	83 ec 08             	sub    $0x8,%esp
 555:	89 c3                	mov    %eax,%ebx
 557:	68 1b 0d 00 00       	push   $0xd1b
 55c:	8d 75 d8             	lea    -0x28(%ebp),%esi
 55f:	57                   	push   %edi
 560:	e8 ab 00 00 00       	call   610 <strcpy>
	p = buffer+strlen(buffer);
 565:	89 3c 24             	mov    %edi,(%esp)
 568:	e8 23 01 00 00       	call   690 <strlen>
 56d:	01 f8                	add    %edi,%eax
        if(dir.inum == 0 || !strcmp(dir.name, ".") || !strcmp(dir.name, "..")) continue;
 56f:	8d 7d da             	lea    -0x26(%ebp),%edi
    while (read(fd, &dir, sizeof(dir))==sizeof(dir)){
 572:	83 c4 10             	add    $0x10,%esp
	*p = '/';
 575:	c6 00 2f             	movb   $0x2f,(%eax)
	p = buffer+strlen(buffer);
 578:	89 45 d0             	mov    %eax,-0x30(%ebp)
	p++;
 57b:	83 c0 01             	add    $0x1,%eax
 57e:	89 45 cc             	mov    %eax,-0x34(%ebp)
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    while (read(fd, &dir, sizeof(dir))==sizeof(dir)){
 588:	83 ec 04             	sub    $0x4,%esp
 58b:	6a 10                	push   $0x10
 58d:	56                   	push   %esi
 58e:	53                   	push   %ebx
 58f:	e8 e6 02 00 00       	call   87a <read>
 594:	83 c4 10             	add    $0x10,%esp
 597:	83 f8 10             	cmp    $0x10,%eax
 59a:	75 5c                	jne    5f8 <moveSmua+0xd8>
        if(dir.inum == 0 || !strcmp(dir.name, ".") || !strcmp(dir.name, "..")) continue;
 59c:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
 5a1:	74 e5                	je     588 <moveSmua+0x68>
 5a3:	83 ec 08             	sub    $0x8,%esp
 5a6:	68 1b 0d 00 00       	push   $0xd1b
 5ab:	57                   	push   %edi
 5ac:	e8 8f 00 00 00       	call   640 <strcmp>
 5b1:	83 c4 10             	add    $0x10,%esp
 5b4:	85 c0                	test   %eax,%eax
 5b6:	74 d0                	je     588 <moveSmua+0x68>
 5b8:	83 ec 08             	sub    $0x8,%esp
 5bb:	68 1a 0d 00 00       	push   $0xd1a
 5c0:	57                   	push   %edi
 5c1:	e8 7a 00 00 00       	call   640 <strcmp>
 5c6:	83 c4 10             	add    $0x10,%esp
 5c9:	85 c0                	test   %eax,%eax
 5cb:	74 bb                	je     588 <moveSmua+0x68>
        memmove(p, dir.name, DIRSIZ);
 5cd:	83 ec 04             	sub    $0x4,%esp
 5d0:	6a 0e                	push   $0xe
 5d2:	57                   	push   %edi
 5d3:	ff 75 cc             	pushl  -0x34(%ebp)
 5d6:	e8 55 02 00 00       	call   830 <memmove>
		p[DIRSIZ] = 0;
 5db:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5de:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
        move(buffer,to);
 5e2:	58                   	pop    %eax
 5e3:	5a                   	pop    %edx
 5e4:	ff 75 08             	pushl  0x8(%ebp)
 5e7:	ff 75 d4             	pushl  -0x2c(%ebp)
 5ea:	e8 e1 fa ff ff       	call   d0 <move>
 5ef:	83 c4 10             	add    $0x10,%esp
 5f2:	eb 94                	jmp    588 <moveSmua+0x68>
 5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
 5f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fb:	5b                   	pop    %ebx
 5fc:	5e                   	pop    %esi
 5fd:	5f                   	pop    %edi
 5fe:	5d                   	pop    %ebp
 5ff:	c3                   	ret    
    if (fd<0) exit();
 600:	e8 5d 02 00 00       	call   862 <exit>
 605:	66 90                	xchg   %ax,%ax
 607:	66 90                	xchg   %ax,%ax
 609:	66 90                	xchg   %ax,%ax
 60b:	66 90                	xchg   %ax,%ax
 60d:	66 90                	xchg   %ax,%ax
 60f:	90                   	nop

00000610 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	53                   	push   %ebx
 614:	8b 45 08             	mov    0x8(%ebp),%eax
 617:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 61a:	89 c2                	mov    %eax,%edx
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 620:	83 c1 01             	add    $0x1,%ecx
 623:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 627:	83 c2 01             	add    $0x1,%edx
 62a:	84 db                	test   %bl,%bl
 62c:	88 5a ff             	mov    %bl,-0x1(%edx)
 62f:	75 ef                	jne    620 <strcpy+0x10>
    ;
  return os;
}
 631:	5b                   	pop    %ebx
 632:	5d                   	pop    %ebp
 633:	c3                   	ret    
 634:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 63a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000640 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	53                   	push   %ebx
 644:	8b 55 08             	mov    0x8(%ebp),%edx
 647:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 64a:	0f b6 02             	movzbl (%edx),%eax
 64d:	0f b6 19             	movzbl (%ecx),%ebx
 650:	84 c0                	test   %al,%al
 652:	75 1c                	jne    670 <strcmp+0x30>
 654:	eb 2a                	jmp    680 <strcmp+0x40>
 656:	8d 76 00             	lea    0x0(%esi),%esi
 659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 660:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 663:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 666:	83 c1 01             	add    $0x1,%ecx
 669:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 66c:	84 c0                	test   %al,%al
 66e:	74 10                	je     680 <strcmp+0x40>
 670:	38 d8                	cmp    %bl,%al
 672:	74 ec                	je     660 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 674:	29 d8                	sub    %ebx,%eax
}
 676:	5b                   	pop    %ebx
 677:	5d                   	pop    %ebp
 678:	c3                   	ret    
 679:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 680:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 682:	29 d8                	sub    %ebx,%eax
}
 684:	5b                   	pop    %ebx
 685:	5d                   	pop    %ebp
 686:	c3                   	ret    
 687:	89 f6                	mov    %esi,%esi
 689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000690 <strlen>:

uint
strlen(const char *s)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 696:	80 39 00             	cmpb   $0x0,(%ecx)
 699:	74 15                	je     6b0 <strlen+0x20>
 69b:	31 d2                	xor    %edx,%edx
 69d:	8d 76 00             	lea    0x0(%esi),%esi
 6a0:	83 c2 01             	add    $0x1,%edx
 6a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 6a7:	89 d0                	mov    %edx,%eax
 6a9:	75 f5                	jne    6a0 <strlen+0x10>
    ;
  return n;
}
 6ab:	5d                   	pop    %ebp
 6ac:	c3                   	ret    
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 6b0:	31 c0                	xor    %eax,%eax
}
 6b2:	5d                   	pop    %ebp
 6b3:	c3                   	ret    
 6b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000006c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 6c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 6ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 6cd:	89 d7                	mov    %edx,%edi
 6cf:	fc                   	cld    
 6d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6d2:	89 d0                	mov    %edx,%eax
 6d4:	5f                   	pop    %edi
 6d5:	5d                   	pop    %ebp
 6d6:	c3                   	ret    
 6d7:	89 f6                	mov    %esi,%esi
 6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006e0 <strchr>:

char*
strchr(const char *s, char c)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	53                   	push   %ebx
 6e4:	8b 45 08             	mov    0x8(%ebp),%eax
 6e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 6ea:	0f b6 10             	movzbl (%eax),%edx
 6ed:	84 d2                	test   %dl,%dl
 6ef:	74 1d                	je     70e <strchr+0x2e>
    if(*s == c)
 6f1:	38 d3                	cmp    %dl,%bl
 6f3:	89 d9                	mov    %ebx,%ecx
 6f5:	75 0d                	jne    704 <strchr+0x24>
 6f7:	eb 17                	jmp    710 <strchr+0x30>
 6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 700:	38 ca                	cmp    %cl,%dl
 702:	74 0c                	je     710 <strchr+0x30>
  for(; *s; s++)
 704:	83 c0 01             	add    $0x1,%eax
 707:	0f b6 10             	movzbl (%eax),%edx
 70a:	84 d2                	test   %dl,%dl
 70c:	75 f2                	jne    700 <strchr+0x20>
      return (char*)s;
  return 0;
 70e:	31 c0                	xor    %eax,%eax
}
 710:	5b                   	pop    %ebx
 711:	5d                   	pop    %ebp
 712:	c3                   	ret    
 713:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000720 <gets>:

char*
gets(char *buf, int max)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 726:	31 f6                	xor    %esi,%esi
 728:	89 f3                	mov    %esi,%ebx
{
 72a:	83 ec 1c             	sub    $0x1c,%esp
 72d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 730:	eb 2f                	jmp    761 <gets+0x41>
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 738:	8d 45 e7             	lea    -0x19(%ebp),%eax
 73b:	83 ec 04             	sub    $0x4,%esp
 73e:	6a 01                	push   $0x1
 740:	50                   	push   %eax
 741:	6a 00                	push   $0x0
 743:	e8 32 01 00 00       	call   87a <read>
    if(cc < 1)
 748:	83 c4 10             	add    $0x10,%esp
 74b:	85 c0                	test   %eax,%eax
 74d:	7e 1c                	jle    76b <gets+0x4b>
      break;
    buf[i++] = c;
 74f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 753:	83 c7 01             	add    $0x1,%edi
 756:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 759:	3c 0a                	cmp    $0xa,%al
 75b:	74 23                	je     780 <gets+0x60>
 75d:	3c 0d                	cmp    $0xd,%al
 75f:	74 1f                	je     780 <gets+0x60>
  for(i=0; i+1 < max; ){
 761:	83 c3 01             	add    $0x1,%ebx
 764:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 767:	89 fe                	mov    %edi,%esi
 769:	7c cd                	jl     738 <gets+0x18>
 76b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 76d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 770:	c6 03 00             	movb   $0x0,(%ebx)
}
 773:	8d 65 f4             	lea    -0xc(%ebp),%esp
 776:	5b                   	pop    %ebx
 777:	5e                   	pop    %esi
 778:	5f                   	pop    %edi
 779:	5d                   	pop    %ebp
 77a:	c3                   	ret    
 77b:	90                   	nop
 77c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 780:	8b 75 08             	mov    0x8(%ebp),%esi
 783:	8b 45 08             	mov    0x8(%ebp),%eax
 786:	01 de                	add    %ebx,%esi
 788:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 78a:	c6 03 00             	movb   $0x0,(%ebx)
}
 78d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 790:	5b                   	pop    %ebx
 791:	5e                   	pop    %esi
 792:	5f                   	pop    %edi
 793:	5d                   	pop    %ebp
 794:	c3                   	ret    
 795:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	56                   	push   %esi
 7a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 7a5:	83 ec 08             	sub    $0x8,%esp
 7a8:	6a 00                	push   $0x0
 7aa:	ff 75 08             	pushl  0x8(%ebp)
 7ad:	e8 f0 00 00 00       	call   8a2 <open>
  if(fd < 0)
 7b2:	83 c4 10             	add    $0x10,%esp
 7b5:	85 c0                	test   %eax,%eax
 7b7:	78 27                	js     7e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 7b9:	83 ec 08             	sub    $0x8,%esp
 7bc:	ff 75 0c             	pushl  0xc(%ebp)
 7bf:	89 c3                	mov    %eax,%ebx
 7c1:	50                   	push   %eax
 7c2:	e8 f3 00 00 00       	call   8ba <fstat>
  close(fd);
 7c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 7ca:	89 c6                	mov    %eax,%esi
  close(fd);
 7cc:	e8 b9 00 00 00       	call   88a <close>
  return r;
 7d1:	83 c4 10             	add    $0x10,%esp
}
 7d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 7d7:	89 f0                	mov    %esi,%eax
 7d9:	5b                   	pop    %ebx
 7da:	5e                   	pop    %esi
 7db:	5d                   	pop    %ebp
 7dc:	c3                   	ret    
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 7e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 7e5:	eb ed                	jmp    7d4 <stat+0x34>
 7e7:	89 f6                	mov    %esi,%esi
 7e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007f0 <atoi>:

int
atoi(const char *s)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	53                   	push   %ebx
 7f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7f7:	0f be 11             	movsbl (%ecx),%edx
 7fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 7fd:	3c 09                	cmp    $0x9,%al
  n = 0;
 7ff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 804:	77 1f                	ja     825 <atoi+0x35>
 806:	8d 76 00             	lea    0x0(%esi),%esi
 809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 810:	8d 04 80             	lea    (%eax,%eax,4),%eax
 813:	83 c1 01             	add    $0x1,%ecx
 816:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 81a:	0f be 11             	movsbl (%ecx),%edx
 81d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 820:	80 fb 09             	cmp    $0x9,%bl
 823:	76 eb                	jbe    810 <atoi+0x20>
  return n;
}
 825:	5b                   	pop    %ebx
 826:	5d                   	pop    %ebp
 827:	c3                   	ret    
 828:	90                   	nop
 829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000830 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	56                   	push   %esi
 834:	53                   	push   %ebx
 835:	8b 5d 10             	mov    0x10(%ebp),%ebx
 838:	8b 45 08             	mov    0x8(%ebp),%eax
 83b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 83e:	85 db                	test   %ebx,%ebx
 840:	7e 14                	jle    856 <memmove+0x26>
 842:	31 d2                	xor    %edx,%edx
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 848:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 84c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 84f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 852:	39 d3                	cmp    %edx,%ebx
 854:	75 f2                	jne    848 <memmove+0x18>
  return vdst;
}
 856:	5b                   	pop    %ebx
 857:	5e                   	pop    %esi
 858:	5d                   	pop    %ebp
 859:	c3                   	ret    

0000085a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 85a:	b8 01 00 00 00       	mov    $0x1,%eax
 85f:	cd 40                	int    $0x40
 861:	c3                   	ret    

00000862 <exit>:
SYSCALL(exit)
 862:	b8 02 00 00 00       	mov    $0x2,%eax
 867:	cd 40                	int    $0x40
 869:	c3                   	ret    

0000086a <wait>:
SYSCALL(wait)
 86a:	b8 03 00 00 00       	mov    $0x3,%eax
 86f:	cd 40                	int    $0x40
 871:	c3                   	ret    

00000872 <pipe>:
SYSCALL(pipe)
 872:	b8 04 00 00 00       	mov    $0x4,%eax
 877:	cd 40                	int    $0x40
 879:	c3                   	ret    

0000087a <read>:
SYSCALL(read)
 87a:	b8 05 00 00 00       	mov    $0x5,%eax
 87f:	cd 40                	int    $0x40
 881:	c3                   	ret    

00000882 <write>:
SYSCALL(write)
 882:	b8 10 00 00 00       	mov    $0x10,%eax
 887:	cd 40                	int    $0x40
 889:	c3                   	ret    

0000088a <close>:
SYSCALL(close)
 88a:	b8 15 00 00 00       	mov    $0x15,%eax
 88f:	cd 40                	int    $0x40
 891:	c3                   	ret    

00000892 <kill>:
SYSCALL(kill)
 892:	b8 06 00 00 00       	mov    $0x6,%eax
 897:	cd 40                	int    $0x40
 899:	c3                   	ret    

0000089a <exec>:
SYSCALL(exec)
 89a:	b8 07 00 00 00       	mov    $0x7,%eax
 89f:	cd 40                	int    $0x40
 8a1:	c3                   	ret    

000008a2 <open>:
SYSCALL(open)
 8a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 8a7:	cd 40                	int    $0x40
 8a9:	c3                   	ret    

000008aa <mknod>:
SYSCALL(mknod)
 8aa:	b8 11 00 00 00       	mov    $0x11,%eax
 8af:	cd 40                	int    $0x40
 8b1:	c3                   	ret    

000008b2 <unlink>:
SYSCALL(unlink)
 8b2:	b8 12 00 00 00       	mov    $0x12,%eax
 8b7:	cd 40                	int    $0x40
 8b9:	c3                   	ret    

000008ba <fstat>:
SYSCALL(fstat)
 8ba:	b8 08 00 00 00       	mov    $0x8,%eax
 8bf:	cd 40                	int    $0x40
 8c1:	c3                   	ret    

000008c2 <link>:
SYSCALL(link)
 8c2:	b8 13 00 00 00       	mov    $0x13,%eax
 8c7:	cd 40                	int    $0x40
 8c9:	c3                   	ret    

000008ca <mkdir>:
SYSCALL(mkdir)
 8ca:	b8 14 00 00 00       	mov    $0x14,%eax
 8cf:	cd 40                	int    $0x40
 8d1:	c3                   	ret    

000008d2 <chdir>:
SYSCALL(chdir)
 8d2:	b8 09 00 00 00       	mov    $0x9,%eax
 8d7:	cd 40                	int    $0x40
 8d9:	c3                   	ret    

000008da <dup>:
SYSCALL(dup)
 8da:	b8 0a 00 00 00       	mov    $0xa,%eax
 8df:	cd 40                	int    $0x40
 8e1:	c3                   	ret    

000008e2 <getpid>:
SYSCALL(getpid)
 8e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 8e7:	cd 40                	int    $0x40
 8e9:	c3                   	ret    

000008ea <sbrk>:
SYSCALL(sbrk)
 8ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 8ef:	cd 40                	int    $0x40
 8f1:	c3                   	ret    

000008f2 <sleep>:
SYSCALL(sleep)
 8f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 8f7:	cd 40                	int    $0x40
 8f9:	c3                   	ret    

000008fa <uptime>:
SYSCALL(uptime)
 8fa:	b8 0e 00 00 00       	mov    $0xe,%eax
 8ff:	cd 40                	int    $0x40
 901:	c3                   	ret    

00000902 <chmod>:
SYSCALL(chmod)
 902:	b8 16 00 00 00       	mov    $0x16,%eax
 907:	cd 40                	int    $0x40
 909:	c3                   	ret    
 90a:	66 90                	xchg   %ax,%ax
 90c:	66 90                	xchg   %ax,%ax
 90e:	66 90                	xchg   %ax,%ax

00000910 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 919:	85 d2                	test   %edx,%edx
{
 91b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 91e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 920:	79 76                	jns    998 <printint+0x88>
 922:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 926:	74 70                	je     998 <printint+0x88>
    x = -xx;
 928:	f7 d8                	neg    %eax
    neg = 1;
 92a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 931:	31 f6                	xor    %esi,%esi
 933:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 936:	eb 0a                	jmp    942 <printint+0x32>
 938:	90                   	nop
 939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 940:	89 fe                	mov    %edi,%esi
 942:	31 d2                	xor    %edx,%edx
 944:	8d 7e 01             	lea    0x1(%esi),%edi
 947:	f7 f1                	div    %ecx
 949:	0f b6 92 34 0d 00 00 	movzbl 0xd34(%edx),%edx
  }while((x /= base) != 0);
 950:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 952:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 955:	75 e9                	jne    940 <printint+0x30>
  if(neg)
 957:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 95a:	85 c0                	test   %eax,%eax
 95c:	74 08                	je     966 <printint+0x56>
    buf[i++] = '-';
 95e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 963:	8d 7e 02             	lea    0x2(%esi),%edi
 966:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 96a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 96d:	8d 76 00             	lea    0x0(%esi),%esi
 970:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 973:	83 ec 04             	sub    $0x4,%esp
 976:	83 ee 01             	sub    $0x1,%esi
 979:	6a 01                	push   $0x1
 97b:	53                   	push   %ebx
 97c:	57                   	push   %edi
 97d:	88 45 d7             	mov    %al,-0x29(%ebp)
 980:	e8 fd fe ff ff       	call   882 <write>

  while(--i >= 0)
 985:	83 c4 10             	add    $0x10,%esp
 988:	39 de                	cmp    %ebx,%esi
 98a:	75 e4                	jne    970 <printint+0x60>
    putc(fd, buf[i]);
}
 98c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 98f:	5b                   	pop    %ebx
 990:	5e                   	pop    %esi
 991:	5f                   	pop    %edi
 992:	5d                   	pop    %ebp
 993:	c3                   	ret    
 994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 998:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 99f:	eb 90                	jmp    931 <printint+0x21>
 9a1:	eb 0d                	jmp    9b0 <printf>
 9a3:	90                   	nop
 9a4:	90                   	nop
 9a5:	90                   	nop
 9a6:	90                   	nop
 9a7:	90                   	nop
 9a8:	90                   	nop
 9a9:	90                   	nop
 9aa:	90                   	nop
 9ab:	90                   	nop
 9ac:	90                   	nop
 9ad:	90                   	nop
 9ae:	90                   	nop
 9af:	90                   	nop

000009b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9b9:	8b 75 0c             	mov    0xc(%ebp),%esi
 9bc:	0f b6 1e             	movzbl (%esi),%ebx
 9bf:	84 db                	test   %bl,%bl
 9c1:	0f 84 b3 00 00 00    	je     a7a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 9c7:	8d 45 10             	lea    0x10(%ebp),%eax
 9ca:	83 c6 01             	add    $0x1,%esi
  state = 0;
 9cd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 9cf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 9d2:	eb 2f                	jmp    a03 <printf+0x53>
 9d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 9d8:	83 f8 25             	cmp    $0x25,%eax
 9db:	0f 84 a7 00 00 00    	je     a88 <printf+0xd8>
  write(fd, &c, 1);
 9e1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 9e4:	83 ec 04             	sub    $0x4,%esp
 9e7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 9ea:	6a 01                	push   $0x1
 9ec:	50                   	push   %eax
 9ed:	ff 75 08             	pushl  0x8(%ebp)
 9f0:	e8 8d fe ff ff       	call   882 <write>
 9f5:	83 c4 10             	add    $0x10,%esp
 9f8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 9fb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 9ff:	84 db                	test   %bl,%bl
 a01:	74 77                	je     a7a <printf+0xca>
    if(state == 0){
 a03:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 a05:	0f be cb             	movsbl %bl,%ecx
 a08:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 a0b:	74 cb                	je     9d8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 a0d:	83 ff 25             	cmp    $0x25,%edi
 a10:	75 e6                	jne    9f8 <printf+0x48>
      if(c == 'd'){
 a12:	83 f8 64             	cmp    $0x64,%eax
 a15:	0f 84 05 01 00 00    	je     b20 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 a1b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 a21:	83 f9 70             	cmp    $0x70,%ecx
 a24:	74 72                	je     a98 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 a26:	83 f8 73             	cmp    $0x73,%eax
 a29:	0f 84 99 00 00 00    	je     ac8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 a2f:	83 f8 63             	cmp    $0x63,%eax
 a32:	0f 84 08 01 00 00    	je     b40 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 a38:	83 f8 25             	cmp    $0x25,%eax
 a3b:	0f 84 ef 00 00 00    	je     b30 <printf+0x180>
  write(fd, &c, 1);
 a41:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a44:	83 ec 04             	sub    $0x4,%esp
 a47:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a4b:	6a 01                	push   $0x1
 a4d:	50                   	push   %eax
 a4e:	ff 75 08             	pushl  0x8(%ebp)
 a51:	e8 2c fe ff ff       	call   882 <write>
 a56:	83 c4 0c             	add    $0xc,%esp
 a59:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 a5c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 a5f:	6a 01                	push   $0x1
 a61:	50                   	push   %eax
 a62:	ff 75 08             	pushl  0x8(%ebp)
 a65:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a68:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 a6a:	e8 13 fe ff ff       	call   882 <write>
  for(i = 0; fmt[i]; i++){
 a6f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 a73:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a76:	84 db                	test   %bl,%bl
 a78:	75 89                	jne    a03 <printf+0x53>
    }
  }
}
 a7a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a7d:	5b                   	pop    %ebx
 a7e:	5e                   	pop    %esi
 a7f:	5f                   	pop    %edi
 a80:	5d                   	pop    %ebp
 a81:	c3                   	ret    
 a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 a88:	bf 25 00 00 00       	mov    $0x25,%edi
 a8d:	e9 66 ff ff ff       	jmp    9f8 <printf+0x48>
 a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a98:	83 ec 0c             	sub    $0xc,%esp
 a9b:	b9 10 00 00 00       	mov    $0x10,%ecx
 aa0:	6a 00                	push   $0x0
 aa2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 aa5:	8b 45 08             	mov    0x8(%ebp),%eax
 aa8:	8b 17                	mov    (%edi),%edx
 aaa:	e8 61 fe ff ff       	call   910 <printint>
        ap++;
 aaf:	89 f8                	mov    %edi,%eax
 ab1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 ab4:	31 ff                	xor    %edi,%edi
        ap++;
 ab6:	83 c0 04             	add    $0x4,%eax
 ab9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 abc:	e9 37 ff ff ff       	jmp    9f8 <printf+0x48>
 ac1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 ac8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 acb:	8b 08                	mov    (%eax),%ecx
        ap++;
 acd:	83 c0 04             	add    $0x4,%eax
 ad0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 ad3:	85 c9                	test   %ecx,%ecx
 ad5:	0f 84 8e 00 00 00    	je     b69 <printf+0x1b9>
        while(*s != 0){
 adb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 ade:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 ae0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 ae2:	84 c0                	test   %al,%al
 ae4:	0f 84 0e ff ff ff    	je     9f8 <printf+0x48>
 aea:	89 75 d0             	mov    %esi,-0x30(%ebp)
 aed:	89 de                	mov    %ebx,%esi
 aef:	8b 5d 08             	mov    0x8(%ebp),%ebx
 af2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 af5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 af8:	83 ec 04             	sub    $0x4,%esp
          s++;
 afb:	83 c6 01             	add    $0x1,%esi
 afe:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 b01:	6a 01                	push   $0x1
 b03:	57                   	push   %edi
 b04:	53                   	push   %ebx
 b05:	e8 78 fd ff ff       	call   882 <write>
        while(*s != 0){
 b0a:	0f b6 06             	movzbl (%esi),%eax
 b0d:	83 c4 10             	add    $0x10,%esp
 b10:	84 c0                	test   %al,%al
 b12:	75 e4                	jne    af8 <printf+0x148>
 b14:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 b17:	31 ff                	xor    %edi,%edi
 b19:	e9 da fe ff ff       	jmp    9f8 <printf+0x48>
 b1e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 b20:	83 ec 0c             	sub    $0xc,%esp
 b23:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b28:	6a 01                	push   $0x1
 b2a:	e9 73 ff ff ff       	jmp    aa2 <printf+0xf2>
 b2f:	90                   	nop
  write(fd, &c, 1);
 b30:	83 ec 04             	sub    $0x4,%esp
 b33:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 b36:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 b39:	6a 01                	push   $0x1
 b3b:	e9 21 ff ff ff       	jmp    a61 <printf+0xb1>
        putc(fd, *ap);
 b40:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 b43:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b46:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 b48:	6a 01                	push   $0x1
        ap++;
 b4a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 b4d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 b50:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 b53:	50                   	push   %eax
 b54:	ff 75 08             	pushl  0x8(%ebp)
 b57:	e8 26 fd ff ff       	call   882 <write>
        ap++;
 b5c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 b5f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b62:	31 ff                	xor    %edi,%edi
 b64:	e9 8f fe ff ff       	jmp    9f8 <printf+0x48>
          s = "(null)";
 b69:	bb 2d 0d 00 00       	mov    $0xd2d,%ebx
        while(*s != 0){
 b6e:	b8 28 00 00 00       	mov    $0x28,%eax
 b73:	e9 72 ff ff ff       	jmp    aea <printf+0x13a>
 b78:	66 90                	xchg   %ax,%ax
 b7a:	66 90                	xchg   %ax,%ax
 b7c:	66 90                	xchg   %ax,%ax
 b7e:	66 90                	xchg   %ax,%ax

00000b80 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b80:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b81:	a1 80 10 00 00       	mov    0x1080,%eax
{
 b86:	89 e5                	mov    %esp,%ebp
 b88:	57                   	push   %edi
 b89:	56                   	push   %esi
 b8a:	53                   	push   %ebx
 b8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b8e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b98:	39 c8                	cmp    %ecx,%eax
 b9a:	8b 10                	mov    (%eax),%edx
 b9c:	73 32                	jae    bd0 <free+0x50>
 b9e:	39 d1                	cmp    %edx,%ecx
 ba0:	72 04                	jb     ba6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ba2:	39 d0                	cmp    %edx,%eax
 ba4:	72 32                	jb     bd8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ba6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ba9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bac:	39 fa                	cmp    %edi,%edx
 bae:	74 30                	je     be0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 bb0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bb3:	8b 50 04             	mov    0x4(%eax),%edx
 bb6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 bb9:	39 f1                	cmp    %esi,%ecx
 bbb:	74 3a                	je     bf7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 bbd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 bbf:	a3 80 10 00 00       	mov    %eax,0x1080
}
 bc4:	5b                   	pop    %ebx
 bc5:	5e                   	pop    %esi
 bc6:	5f                   	pop    %edi
 bc7:	5d                   	pop    %ebp
 bc8:	c3                   	ret    
 bc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bd0:	39 d0                	cmp    %edx,%eax
 bd2:	72 04                	jb     bd8 <free+0x58>
 bd4:	39 d1                	cmp    %edx,%ecx
 bd6:	72 ce                	jb     ba6 <free+0x26>
{
 bd8:	89 d0                	mov    %edx,%eax
 bda:	eb bc                	jmp    b98 <free+0x18>
 bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 be0:	03 72 04             	add    0x4(%edx),%esi
 be3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 be6:	8b 10                	mov    (%eax),%edx
 be8:	8b 12                	mov    (%edx),%edx
 bea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bed:	8b 50 04             	mov    0x4(%eax),%edx
 bf0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 bf3:	39 f1                	cmp    %esi,%ecx
 bf5:	75 c6                	jne    bbd <free+0x3d>
    p->s.size += bp->s.size;
 bf7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 bfa:	a3 80 10 00 00       	mov    %eax,0x1080
    p->s.size += bp->s.size;
 bff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 c02:	8b 53 f8             	mov    -0x8(%ebx),%edx
 c05:	89 10                	mov    %edx,(%eax)
}
 c07:	5b                   	pop    %ebx
 c08:	5e                   	pop    %esi
 c09:	5f                   	pop    %edi
 c0a:	5d                   	pop    %ebp
 c0b:	c3                   	ret    
 c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c10 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c10:	55                   	push   %ebp
 c11:	89 e5                	mov    %esp,%ebp
 c13:	57                   	push   %edi
 c14:	56                   	push   %esi
 c15:	53                   	push   %ebx
 c16:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c19:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c1c:	8b 15 80 10 00 00    	mov    0x1080,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c22:	8d 78 07             	lea    0x7(%eax),%edi
 c25:	c1 ef 03             	shr    $0x3,%edi
 c28:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 c2b:	85 d2                	test   %edx,%edx
 c2d:	0f 84 9d 00 00 00    	je     cd0 <malloc+0xc0>
 c33:	8b 02                	mov    (%edx),%eax
 c35:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 c38:	39 cf                	cmp    %ecx,%edi
 c3a:	76 6c                	jbe    ca8 <malloc+0x98>
 c3c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 c42:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c47:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 c4a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 c51:	eb 0e                	jmp    c61 <malloc+0x51>
 c53:	90                   	nop
 c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c58:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c5a:	8b 48 04             	mov    0x4(%eax),%ecx
 c5d:	39 f9                	cmp    %edi,%ecx
 c5f:	73 47                	jae    ca8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c61:	39 05 80 10 00 00    	cmp    %eax,0x1080
 c67:	89 c2                	mov    %eax,%edx
 c69:	75 ed                	jne    c58 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c6b:	83 ec 0c             	sub    $0xc,%esp
 c6e:	56                   	push   %esi
 c6f:	e8 76 fc ff ff       	call   8ea <sbrk>
  if(p == (char*)-1)
 c74:	83 c4 10             	add    $0x10,%esp
 c77:	83 f8 ff             	cmp    $0xffffffff,%eax
 c7a:	74 1c                	je     c98 <malloc+0x88>
  hp->s.size = nu;
 c7c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c7f:	83 ec 0c             	sub    $0xc,%esp
 c82:	83 c0 08             	add    $0x8,%eax
 c85:	50                   	push   %eax
 c86:	e8 f5 fe ff ff       	call   b80 <free>
  return freep;
 c8b:	8b 15 80 10 00 00    	mov    0x1080,%edx
      if((p = morecore(nunits)) == 0)
 c91:	83 c4 10             	add    $0x10,%esp
 c94:	85 d2                	test   %edx,%edx
 c96:	75 c0                	jne    c58 <malloc+0x48>
        return 0;
  }
}
 c98:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c9b:	31 c0                	xor    %eax,%eax
}
 c9d:	5b                   	pop    %ebx
 c9e:	5e                   	pop    %esi
 c9f:	5f                   	pop    %edi
 ca0:	5d                   	pop    %ebp
 ca1:	c3                   	ret    
 ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ca8:	39 cf                	cmp    %ecx,%edi
 caa:	74 54                	je     d00 <malloc+0xf0>
        p->s.size -= nunits;
 cac:	29 f9                	sub    %edi,%ecx
 cae:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 cb1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 cb4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 cb7:	89 15 80 10 00 00    	mov    %edx,0x1080
}
 cbd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 cc0:	83 c0 08             	add    $0x8,%eax
}
 cc3:	5b                   	pop    %ebx
 cc4:	5e                   	pop    %esi
 cc5:	5f                   	pop    %edi
 cc6:	5d                   	pop    %ebp
 cc7:	c3                   	ret    
 cc8:	90                   	nop
 cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 cd0:	c7 05 80 10 00 00 84 	movl   $0x1084,0x1080
 cd7:	10 00 00 
 cda:	c7 05 84 10 00 00 84 	movl   $0x1084,0x1084
 ce1:	10 00 00 
    base.s.size = 0;
 ce4:	b8 84 10 00 00       	mov    $0x1084,%eax
 ce9:	c7 05 88 10 00 00 00 	movl   $0x0,0x1088
 cf0:	00 00 00 
 cf3:	e9 44 ff ff ff       	jmp    c3c <malloc+0x2c>
 cf8:	90                   	nop
 cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 d00:	8b 08                	mov    (%eax),%ecx
 d02:	89 0a                	mov    %ecx,(%edx)
 d04:	eb b1                	jmp    cb7 <malloc+0xa7>
