#include "types.h"
#include "stat.h"
#include "user.h"

char buffer[4096];

/*
    MODE = 1    -n atau tidak ada argumen       default 10 baris
    MODE = 2    -c                              per byte
    MODE = 3    -q                              2 file, default 20 baris
    MODE = 4    -v                              print nama file di awal
*/

void head(char *filename, int defline, int mode){
    int fd;   
    
    fd = open(filename, 0);
    if(fd < 0){
        printf(2, "head: cannot open file\n");
        exit();
    }
    
    int dp, i = 0, currline = 0;

    if(mode == 4){
        printf(1, "%s\n", filename);
    }

    while(((dp = read(fd, buffer, sizeof(buffer))) > 0) && (currline < defline)){      
        while((i < dp) && (currline < defline)){
            printf(1, "%c", buffer[i]);

            if(mode == 1 || mode == 3 || mode == 4){
                if(buffer[i] == '\n')
                    currline++;
            }else if(mode == 2){
                currline++;
            }
            
            i++;
        }
    }

    close(fd);
    
}

int main(int argc, char *argv[]){
    int i, mode = 1, n = 10;
    
    for(i=1; i<argc; i++){
        strcpy(buffer, argv[i]);

        if(buffer[0] == '-'){
            if(buffer[1] == 'n' || buffer[1] == 'c'){                  // baris, 2 args, default 10
                if(argc < 4){
                    printf(2, "head: missing arguments\n");
                    exit();
                }else if(argc > 4){
                    printf(2, "head: too many arguments\n");
                    exit();
                }

                if(buffer[1] == 'n'){
                    mode = 1;
                    i++;
                    n = atoi(argv[i]);
                }else if(buffer[1] == 'c'){            // byte, 2 args
                    mode = 2;
                    i++;
                    n = atoi(argv[i]);
                }
            }else if(buffer[1] == 'q'){
                if(argc < 4){
                    printf(2, "head: missing arguments\n");
                    exit();
                }
                mode = 3;
                n = 20;
            }else if(buffer[1] == 'v'){
                if(argc < 3){
                    printf(2, "head: missing arguments\n");
                    exit();
                }
                mode = 4;
            }else{
                printf(2, "head: invalid syntax\n");
                exit();
            }
        }else{
            head(argv[i], n, mode);
            if(i+1 < argc)
                printf(1, "\n");
        }
    }
    exit();
}