///dec2hex(real)
//Based on code from GMLScripts
var dec,hex,h,byte,hi,lo;
dec = argument0;
if (dec) 
{
	hex = "";
}
else 
{
	return "0x00";
}

h = "0123456789ABCDEF";
while (dec) {
    byte = dec & 255;
    if byte!=0
    hi = string_char_at(h,byte div 16 + 1);
    lo = string_char_at(h,byte mod 16 + 1);
    hex = hi + lo + hex;
    dec = dec >> 8;
}


return "0x"+hex;
