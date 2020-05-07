#include "types.h"
#include "user.h"
#include "stat.h"
#include "fcntl.h"
#include "fs.h"

void move(char *, char *);
char *cat (char * dest, const char *src){
	strcpy (dest + strlen(dest), src);
	return dest;
}

char *namaFile(char *path){
    char *nama = path, *temp = path;
    int i;
    for (i=strlen(temp); i>=0; i--) {
        if (temp[i]=='/') {
            nama= &temp[i+1];
            break;
        }
    }
    return nama;
}


void move(char* from, char* to){   
    struct stat lol;
    int fd = open(from, O_RDONLY);
    // printf(2,"lol\n");
    if (fd<0){
        printf(2,"ndaada filenya\n");
        exit();
    }
    fstat(fd,&lol);

    if (lol.type == T_DIR){
        close(fd);
        // mfolder(from,to);
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
        int fd5=open(from,0);

        char *buf1 = (char*)malloc(512*sizeof(char*));
        char *buf2 = (char*)malloc(512*sizeof(char*));
        char *p;
        struct dirent dir;
        
        char *nama = namaFile(from);
        cat(buf2,to); 
        cat(buf2,"/"); cat(buf2,nama);        // buat folder aawal
        if (mkdir(buf2)<0){
            // printf(2,"gagal buat folder\n");
            // exit();
            mkdir(to);
            cat(buf2,to);
        }
        cat(buf1,from);
        p = buf1+strlen(buf1);
        *p = '/';
        p++;

        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
            if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
            memmove(p,dir.name, strlen(dir.name));
            p[strlen(dir.name)]=0;
//            printf(2,"%s %s\n",buf1,buf2);
            move(buf1, buf2);
        }
        close (fd5);
        unlink(from);
    }
    else{
        close(fd);
        // mfile(from,to);
        if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
        if (from[strlen(to)-1]=='/') from[strlen(to)-1]=0; 
        int fd5=open(from,0);

        char *buf1 = (char*)malloc(512*sizeof(char*));
        char *buf2 = (char*)malloc(512*sizeof(char*));
        char *p;
        struct dirent dir;
        
        char *nama = namaFile(from);
        cat(buf2,to); 
        cat(buf2,"/"); cat(buf2,nama);        // buat folder aawal
        if (mkdir(buf2)<0){
            // printf(2,"gagal buat folder\n");
            // exit();
            mkdir(to);
            cat(buf2,to);
        }
        cat(buf1,from);
        p = buf1+strlen(buf1);
        *p = '/';
        p++;

        while (read(fd5, &dir, sizeof(dir))==sizeof(dir)){
            if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")) continue;
            memmove(p,dir.name, strlen(dir.name));
            p[strlen(dir.name)]=0;
//            printf(2,"%s %s\n",buf1,buf2);
            move(buf1, buf2);
        }
        close (fd5);
        unlink(from);
    }
    // close (fd);
}

void moveSmua(char *to){
    char *buffer = (char*) malloc (512*sizeof(buffer));
    char *p;
    struct dirent dir;
    int fd = open(".",0);
    if (fd<0) exit();
    strcpy(buffer, ".");
	p = buffer+strlen(buffer);
	*p = '/';
	p++;

    while (read(fd, &dir, sizeof(dir))==sizeof(dir)){
        if(dir.inum == 0 || !strcmp(dir.name, ".") || !strcmp(dir.name, "..")) continue;
        memmove(p, dir.name, DIRSIZ);
		p[DIRSIZ] = 0;
        move(buffer,to);
    }
}
int main(int argc, char *argv[]){
    if (argc<2){
        printf(2,"Argumen kurang\n");
        exit();
    }
    if (argv[1][0]=='*'){
        moveSmua(argv[2]);
    }
    else{
        move(argv[1],argv[2]);
    }
    exit();
}
