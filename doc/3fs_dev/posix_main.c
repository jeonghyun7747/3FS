#include <stdio.h>
#include <fcntl.h>      // open
#include <unistd.h>     // read, write, close
#include <string.h>     // strlen
#include <errno.h>      // errno

int main() {
    const char *filename = "/3fs/stage/ttt/example.txt";
    const char *text = "Hello, POSIX I/O!\n";

    printf("파일 이름: %s\n", filename);
    printf("쓰기 내용: %s", text);
    // 파일 생성 및 열기 (쓰기 전용, 없으면 생성, 있으면 내용 지움)
    int fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd == -1) {
        perror("open (write)");
        return 1;
    }

    printf  ("파일 디스크립터: %d\n", fd);
    // 파일에 문자열 쓰기
    ssize_t bytes_written = write(fd, text, strlen(text));
    if (bytes_written == -1) {
        perror("write");
        close(fd);
        return 1;
    }
    printf("쓰기 바이트 수: %zd\n", bytes_written);
    printf("파일에 %zd 바이트가 쓰였습니다.\n", bytes_written);    
    close(fd);  // 파일 닫기

    printf("파일에 쓰기 완료.\n");
    // 파일 열기 (읽기 전용)
    fd = open(filename, O_RDONLY);
    if (fd == -1) {
        perror("open (read)");
        printf("파일을 읽기 전용으로 열 수 없습니다.\n");
        return 1;
    }

    printf("파일 디스크립터: %d\n", fd);    
    // 파일에서 데이터 읽기
    char buffer[100];
    ssize_t bytes_read = read(fd, buffer, sizeof(buffer) - 1);
    if (bytes_read == -1) {
        perror("read");
        printf("파일에서 읽기 오류 발생.\n");        
        close(fd);
        return 1;
    }
    if (bytes_read == 0) {
        printf("파일에서 읽은 내용이 없습니다.\n");
        close(fd);
        return 0;
    }       
    buffer[bytes_read] = '\0';  // null-terminate
    printf("읽은 내용: %s", buffer);
    close(fd);  // 파일 닫기
    printf("파일 읽기 완료.\n");
    printf("프로그램이 성공적으로 실행되었습니다.\n");
    // 프로그램 성공적으로 종료
    return 0;
}
