  ENTRY(loader)

  SECTIONS{
  . = 0x00100000;
.text ALIGN (0x1000) :  /* align at 4 KB  */
  {
  *(.text)
  }
.rodata ALIGN (0x1000) :
  {
  *(.rodata*)
  }
.data ALIGN (0x1000) :
  {
  *(.data)
  }
.bss ALIGN (0x1000) :
  {
  *(COMMON)
  *(.bss)
  }
  }
