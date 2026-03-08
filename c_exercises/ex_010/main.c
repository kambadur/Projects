#include <stdio.h>
void powerOn();
void powerOff();
void reset();

int main(void){
    //!showMemory(start=65530, cursors=[])
    void (*actions[3])();   //array of three functiion pointers
    int i=0;
    actions[0] = powerOn;
    actions[1] = powerOff;
    actions[2] = reset;
    
    scanf("%d", &i);
    // If the input is out of bounds, default to the 'reset' action.
    if (i < 0 || i >= 3) {
        i = 2;
    }
    actions[i]();
    return 0;
}

void powerOn() {
    printf("System Booting...\n");
}

void powerOff(){
     printf("Shutting Down...\n");
}

void reset(){
     printf("Restarting...\n");
}