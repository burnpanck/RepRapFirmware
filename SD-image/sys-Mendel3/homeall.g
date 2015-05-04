; homeall file for use with dc42 Duet firmware
; Adjust the bed upper and lower limits in config.g (M208 commands) to get the correct homing positions
G91
G1 Z4 F200
G1 X-300 Y-250 F3000 S1
G1 X4 Y4 F600
G1 X-10 Y-10 S1
G90
; Adjust the XY coordinates in the following to place the IR sensor over a suitable spot
; If you are using a dc42 IR sensor then you can change the coordinates to be near the centre of the bed
G1 X35 Y5 F2000
G30
