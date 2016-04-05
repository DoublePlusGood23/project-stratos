global outb                     ; make the label outb visible outside to the file
  ; outb - send a BYTE to an I/O port
  ; stack: [esp + 8] the data byte
  ;        [esp + 4] the I/O port
  ;        [esp  ] return address
outb:
  mov al, [esp + 8]             ; move the data to be sent into the al register
  mov dx, [esp + 4]             ; move the addr of the I/O port in to the dx register
  out dx, al                    ; send the data into the I/O port
  ret                           ; ret calls funct.
