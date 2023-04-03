/* Entry point address in the ELF */
ENTRY(Reset_Handler)  

/* Linker script Symbols 
Symbol declaration. Not variable declaration.
Compiler is not going to see this. Only linker sees this.
Hence it has to be addresses only. Not variables.
Syntax for symbol declaration to be followed.*/

__FLASH_START       =   0x08000000;
__FLASH_SIZE        =   0x80000;        /* 512*1024B = 512K */

__SRAM_START         =   0x20000000;
__SRAM_SIZE          =   0x18000;       /* 96*1024B = 96K */

__max_stack_size    =   0x200;
__max_heap_size     =   0x400;


/* Memories definition */
MEMORY
{
  SRAM    (xrw)    : ORIGIN = __SRAM_START,   LENGTH = __SRAM_SIZE
  FLASH    (rx)    : ORIGIN = __FLASH_START,   LENGTH = __FLASH_SIZE
}


SECTIONS
{
    .isr_vector :
    {
        *(.isr_vector)
        /*. = ALIGN(4); */
        _eisrVector = .;
    }>FLASH AT> FLASH
    .text :
    {
        /*merge .text section of main.o, led.o and startup.o
        '*' is a wouldcard chararter that merges all the input .o files 
        Also note that we are not relocating this section in startup file.
        Thats why this section has same VMA and LMA.        
        > vma AT> lma                                                    
        Once the linker see this, it generates the absolute addresses for this 
        section in the memory region mentioned, i.e. FLASH.                  */
        _stext = .;     /* start of .text section in vma which here is same as lma, i.e. flash */
        *(.text)
        . = ALIGN(4);
        _etext = .;     /* end of .text section in vma which here is same as lma, i.e. flash */
    }> FLASH AT> FLASH

    .rodata :
    {
        *(.rodata)
        . = ALIGN(4);
        _erodata = .;
    }>FLASH AT> FLASH

    .data :
    {
        /* The Location Counter always tracks the VMA. In this case
        the symbol _sdata is having SRAM as VMA. Hence it will be loaded with start address 
        of SRAM */
        _sdata = .;     /* This should be 0x20000000 */
        *(.data)
        . = ALIGN(4);
        _edata = .;     /* This should be 020000000 + len(.data) */
    }> SRAM AT> FLASH

    .bss :
    {
        _sbss = .;  /*start of bss in SRAM */
        /* this doesn't get stored in the flash.
        Thats why both vma and lma are SRAM             */
        *(.bss)
        . = ALIGN(4);
        _ebss = .;  /* end of bss in SRAM */
    }> SRAM AT> SRAM

}