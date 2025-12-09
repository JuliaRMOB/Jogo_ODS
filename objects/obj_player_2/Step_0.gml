var left = keyboard_check(ord("A"))
var right = keyboard_check(ord("D"))
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))

xdir = right - left
ydir = up - down

if xdir != 0
	image_xscale = xdir

velh = vel * xdir
velv = -vel * ydir

x += velh
y += velv

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);