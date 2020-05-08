#include "types.h"
#include "stat.h"
#include "user.h"

char buf[512];

int
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    printf(2, "cd: invalid arguments\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    if(chdir(argv[i]) < 0){
      printf(2, "cd: cannot open %s\n", argv[i]);
      exit();
    }
  }

  exit();
}
