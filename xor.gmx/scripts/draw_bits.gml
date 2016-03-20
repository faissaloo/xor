///draw_bits(var,x,y,alpha)
dpth=4
for (ii=0;ii<=dpth;ii++)
{
    for (i=0;i<=length;i++)
    {
        if distancebetween<=(sprite_height*image_yscale) and distancebetween>0
        {
        	//we're using 1- here instead of not because Game Maker has a bug
        	//ENIGMA doesn't though :)
        	draw_sprite_ext(sprite_index, 1-(flipping-((argument0>>(length-i))&1)),argument1+((sprite_width*image_xscale)*((length/2)-i))+ii-dpth,argument2+ii-dpth,image_xscale, image_yscale, image_angle,  image_blend, argument3)
        }
        else
        {
        	draw_sprite_ext(sprite_index, (argument0>>(length-i))&1,argument1+((sprite_width*image_xscale)*((length/2)-i))+ii-dpth,argument2+ii-dpth,image_xscale, image_yscale, image_angle, image_blend, argument3)
        }
    }
}
