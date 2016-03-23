//Put the times back
game_ctrl_obj.alarm[0]=global.remainingfalltime
game_ctrl_obj.alarm[1]=1+((global.remainingfalltime/32)*3)
game_ctrl_obj.paused=false
instance_destroy()
