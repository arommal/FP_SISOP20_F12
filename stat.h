#define T_DIR  1   // Directory
#define T_FILE 2   // File
#define T_DEV  3   // Device

// #define S_IRWXU 00700
// #define S_IRUSR 00400
// #define S_IWUSR 00200
// #define S_IXUSR 00100

// #define S_IRWXG 00070
// #define S_IRGRP 00040
// #define S_IWGRP 00020
// #define S_IXGRP 00010

// #define S_IRWXO 00007
// #define S_IROTH 00004
// #define S_IWOTH 00002
// #define S_IXOTH 00001

// #define S_IRUGO		(S_IRUSR|S_IRGRP|S_IROTH)
// #define S_IWUGO		(S_IWUSR|S_IWGRP|S_IWOTH)
// #define S_IXUGO		(S_IXUSR|S_IXGRP|S_IXOTH)

struct stat {
  short type;  // Type of file
  int dev;     // File system's disk device
  uint ino;    // Inode number
  short nlink; // Number of links to file
  uint size;   // Size of file in bytes
  mode_t mode;
};
