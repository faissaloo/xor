///draw_menu(str,help,strfont,helpfont)
draw_set_halign(fa_center)
draw_set_font(argument2)
//Draw the main string menu
selectedIndex=1
stringToDraw=""
if selectedIndex=no and flash
{
	stringToDraw+=">"
}
//For some retarded reason strings in GM are 1 indexed rather than 0
for (i=1;i<=string_length(argument0);i++)
{
	if string_char_at(argument0,i)=="#"
	{
		if selectedIndex=no and flash
		{
			stringToDraw+="<"
		}
		selectedIndex++
		stringToDraw+="#"
		if selectedIndex=no and flash
		{
			stringToDraw+=">"
		}
	}
	else
	{
		if selectedIndex=no and flash
		{
			stringToDraw+=string_char_at(argument0,i)
		}
		else if selectedIndex!=no
		{
			stringToDraw+=string_char_at(argument0,i)
		}
	}
}
if selectedIndex=no and flash
{
	stringToDraw+="<"
}
draw_text(room_width/2,(room_height/2),stringToDraw)

//Draw the tip
stringToDraw=""
selectedIndex=1
for (i=1;i<=string_length(argument1);i++)
{
	if string_char_at(argument1,i)=="#"
	{
		selectedIndex++
	}
	else
	{
		if selectedIndex=no
		{
			stringToDraw+=string_char_at(argument1,i)
		}
	}
}
draw_set_font(argument3)
draw_text(room_width/2,room_height/6*5,stringToDraw)
draw_set_halign(fa_left)
