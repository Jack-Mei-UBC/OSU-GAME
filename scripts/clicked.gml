if position_meeting(mouse_x,mouse_y,id) and (mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(ord("Z"))) and global.interaction = true{
    return(true)
}
else{
    return(false)
}
