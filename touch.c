#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"

int main(int argc, char *argv[])
{
	int i;

    /*
        argv[0] adalah command
        argv[1] adalah nama file
    */
	for(i = 1; i < argc; i++){
		int fd;
		fd = open(argv[i], O_CREATE);

		if(fd < 0){
		    printf(2, "touch: cannot touch %s\n", argv[i]);
		   	exit();
  		}

  		close(fd);
	}

	exit();
}