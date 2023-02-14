/*
arg 0 is the number
arg 1 is
*/
show = string(argument[0])
com_slot = 0
while (string_length(show)>0){
    num = real(string_char_at(show, 1))
    show = string_delete(show, 1, 1)
    a = instance_create(argument[1]+com_slot*50,argument[2],argument[3])
    with a {
        image_index = o_panel.num
        image_speed = 0
        depth = -1
    }
    com_slot ++
}
b = instance_create(argument[1]+com_slot*50,argument[2],argument[3])
with b {
    sprite_index = s_ecks
    image_blend = make_color_hsv(127, 255, 205)
    image_speed = 0
    depth = -1
}

