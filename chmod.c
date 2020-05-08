#include "types.h"
#include "user.h"

int main(int argc, char *argv[]){
    if(argc < 3){
        printf(2, "chmod: invalid arguments\n");
        exit();
    }

    mode_t mode = 0;
    char* p = argv[1];
    while (*p)
    {
        mode *= 8;
        mode += *p - '0';
        p++;
    }

    if(chmod(argv[2], mode) < 0)
        printf(2, "chmod failed\n");
    else
        printf(2, "chmod succeeded\n");
  
  exit();  
}