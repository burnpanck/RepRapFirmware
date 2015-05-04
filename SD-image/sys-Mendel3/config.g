; Configuration file for RepRap Mendel 3
; RepRapPro Ltd
;
; Copy this file to config.g if you have a Mendel 3
; If you are updating a config.g that you already have you
; may wish to go through it and this file checking what you
; want to keep from your old file.
; 
M111 S0                             ; Debug off
M550 PRepRapPro Mendel 3            ; Machine name (can be anything you like)
M551 Preprap                        ; Machine password (currently not used)
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0x14 ; MAC Address
M552 P192.168.0.56                  ; IP address
M553 P255.255.255.0                 ; Netmask
M554 P192.168.0.1                   ; Gateway
M555 P2                             ; Set output to look like Marlin
G21                                 ; Work in millimetres
G90                                 ; Send absolute corrdinates...
M83                                 ; ...but relative extruder moves
M574 X0 Y1 Z0 S1                    ; set endstop configuration (Y endstop only, at low end, active high)
M906 X800 Y1000 Z800 E800           ; Set motor currents (mA)
M305 P0 R4700 H0 L0                 ; Set the heated bed thermistor series resistor to 4K7
M305 P1 R4700 H0 L0                 ; Set the hot end thermistor series resistor to 4K7
M569 P0 S1                          ; Reverse the X motor
M569 P3 S0                          ;
M92 E656                            ; Set extruder steps per mm
M558 P2                             ; Use a modulated Z probe
G31 Z1.4 P535                       ; Set the probe height and threshold (deliberately too high to avoid bed crashes on initial setup)
M556 S74.5 X0.35 Y0 Z0.5            ; Put your axis compensation here
M201 X1000 Y1000 Z150 E500          ; Accelerations (mm/s^2)  
M203 X15000 Y15000 Z100 E3600       ; Maximum speeds (mm/min)
M566 X200 Y200 Z30 E20              ; Minimum speeds mm/minute    
M563 P0 D0 H1                       ; Define tool 0
G10 P0 S-273 R-273                  ; Set tool 0 operating and standby temperatures
;M563 P1 D1 H2                      ; Define tool 1 Uncomment if you have a dual colour upgrade
;G10 P1 S-273 R-273                 ; Set tool 1 operating and standby temperatures  Uncomment if you have a dual colour upgrade
;M563 P2 D2 H3                      ; Define tool 2 Uncomment if you have a tri colour upgrade
;G10 P2 S-273 R-273                 ; Set tool 2 operating and standby temperatures  Uncomment if you have a dual colour upgrade
G0 F5000                            ; a moderate speed initially
G1 F5000                            ; also for G1
M208 X-56 Y-15 S1                   ; axis lower limits
M208 X204 Y210                      ; axis upper limits
M557 P0 X36 Y5                      ; Four... 
M557 P1 X36 Y180                    ; ...probe points...
M557 P2 X199 Y180                   ; ...for bed...
M557 P3 X199 Y5                     ; ...levelling

