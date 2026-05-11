#include <stdio.h>
#include <ctype.h>

int main(){

    FILE *pfile = fopen("binary.out", "rb");

    if(pfile == NULL){
        printf("Could not open file\n");
        return 1;
    }

    unsigned char binarybytes[16];
    int address = 0;

    while(fread(binarybytes, 1, 16, pfile) > 0) {
        printf("%08x ", address);
    
        for (int i=0; i<16; i++) {
            printf("%02x ", binarybytes[i]); 
        }

        printf("|");
        for (int i=0; i<16; i++) {
            if(isprint(binarybytes[i])) {
                printf("%c", binarybytes[i]);
            } else {
                printf(".");
            }
        }
        printf("|");


        address += 16;
        printf("\n");
    }
    
    fclose(pfile);
    return 0;
}