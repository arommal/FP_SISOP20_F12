#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"

int cekDirektori(char *path){
    struct stat lol;
    int temp = open(path,O_RDONLY);
    fstat(temp,&lol);
    if (lol.type == T_DIR) return 1;
    else return 0;
}

int cekAda(char *path){
    int fd;
    fd = open(path, O_RDONLY);
    return fd;
}

char *cat (char * dest, const char *src){
	strcpy (dest + strlen(dest), src);
	return dest;
}

void copy(char *from, char *to){
    char *buffer = (char*) malloc (512*sizeof (char));
    char *temp = (char*) malloc (512*sizeof (char)) ;
    int fd,fd1;
    struct stat lol;
    fd = open(from, O_RDONLY);
    fd1 = open(to,0);
    if (fd<0){
        printf(2,"file kagak ada\n");
        exit();
    }
    if (cekDirektori(from)){
        printf(2,"Direktori boii\n");
        exit();
    }
    if (to[strlen(to)-1]=='/') to[strlen(to)-1] =0;
    if (fstat(fd1,&lol)>=0){
        if (lol.type == T_DIR){
            mkdir(to);
            cat(temp,to);
            cat(temp,"/");
            cat(temp,from);
            // int fd2;
            close(fd1);
            if ((fd1=open(temp,O_CREATE | O_RDWR))<0){
                printf(2,"gagal buat :(\n");
                exit();
            }
        }
    }
    else{
        // int fd3;
        close(fd1);
        if ((fd1=open(to, O_CREATE | O_RDWR))<0){
            printf (2,"gagal buat :(\n");
            exit();
        }
    }

    // printf(2,"test\n");
    int fd4;
        
    while ((fd4=read(fd,buffer,sizeof(buffer)))>0) printf(fd1,"%s",buffer);
    free (temp);
    free (buffer);

    return;
}

void copySmua(char *to){
    char *buffer = (char*) malloc (512 * sizeof(char*));
    char *p;
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;
    int fd=open(".",0),fd1=open(to,O_RDONLY);
    struct dirent dir;
    struct stat lol;
    if (fd<0){
        printf(2,"ndabisa buka .\n");
        exit();
    }
    if (fd1<0){
        printf (2, "file kagak ada\n");
        exit();
    }
    if (fstat(fd1,&lol)<0){
        printf (2,"file ndabisa distat\n");
        exit();
    }
    else{
        if (lol.type != T_DIR){
            printf(2,"bukan direktori");
            exit();
        }
    }
    // cat (buffer, to); cat (buffer,"/");
    strcpy(buffer, ".");
	p = buffer+strlen(buffer);
	*p = '/';
	p++;
    while (read(fd,&dir,sizeof(dir))==sizeof(dir)){
        if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
        if (stat(dir.name,&lol)>=0 && lol.type == T_DIR) continue;
        memmove(p, dir.name, DIRSIZ);
        p[DIRSIZ]=0;
        copy(buffer,to);
    }
    close(fd);
    close(fd1);
}

void copyR (char* from, char* to){
    if (strcmp(from, "")==0) return;
    if (strcmp(to, "")==0) return;
    char *buffer = (char*) malloc (512 * sizeof(char*));
    char *from2 = (char*)malloc(512*sizeof(char*));
    char *to2 = (char*)malloc(512*sizeof(char*));
    // char *p;
    if (to[strlen(to)-1]=='/') to[strlen(to)-1]=0;   
    if (from[strlen(from)-1]=='/') from[strlen(from)-1]=0;
    struct dirent dir;
    struct stat lol;
    
    int fd = open(from,0);
    if (fd<0){
        printf(2,"ndabisa buka .\n");
//        printf(2,"yang ndabisa %s\n", from);
        exit();
    }
    if (fstat(fd,&lol)<0){
        printf (2,"file ndabisa distat\n");
        exit();
    }
    if (lol.type == T_DIR){
        // printf(2,"Folder : %s\n", from);
        cat(buffer,to); cat(buffer,"/"); cat(buffer,from);
        int x =mkdir(to);
        if (x>=0){
            while (read(fd,&dir, sizeof(dir))==sizeof(dir)){
                memset (from2,0,sizeof from2);
                memset (to2, 0, sizeof to2);
                if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
                cat(from2,from); cat(from2,"/"); cat(from2,dir.name);
                cat(to2, to); cat(to2,"/"); cat(to2,dir.name);
//                printf(2,"Folder\tFrom: %s\t From2: %s\n",from,from2);
                copyR(from2, to2);
            }
        }
        else{
            while (read(fd,&dir, sizeof(dir))==sizeof(dir)){
                memset (from2,0,sizeof from2);
                memset (to2, 0, sizeof to2);
                if (dir.inum == 0 || strcmp(dir.name, ".")==0|| strcmp(dir.name,"..")==0) continue;
                cat(from2,from); cat(from2,"/"); cat(from2,dir.name);
                cat(to2, buffer); cat(to2,"/"); cat(to2,dir.name);
//                printf(2,"Folder\tFrom: %s\t From2: %s\n",from,from2);
                copyR(from2, to2);
            }
        }
        
    }
    else if (lol.type == T_FILE){
        // printf(2,"File : %s\n", from);
//        printf(2,"File\tFrom: %s\t From2: %s\n",from,from2);
        copy(from,to);

    }
    close(fd);
    free(buffer);
    free(from2);
    free(to2);
}
int main(int argc, char *argv[]){
    if (argc < 2){
        printf(2,"Argumen kurang\n");
        exit();
    }

    if (argv[1][0]=='*'){
        copySmua(argv[2]);
    }

    else if (strcmp(argv[1],"-R")==0 || strcmp(argv[1],"-r")==0){
        copyR(argv[2],argv[3]);
    }

    else{
        
        copy(argv[1],argv[2]);
        exit();
    }
}
