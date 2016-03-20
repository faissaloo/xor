///draw_shadow(x,y,xx,yy,r)
draw_set_color(c_black)
draw_set_alpha(1/argument4)
for (i=0;i<=argument4;i++)
{
	draw_rectangle(argument0-i, argument1-i, argument2+i, argument3+i, false)
}
draw_set_alpha(1)
