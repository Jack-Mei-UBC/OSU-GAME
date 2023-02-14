if argument[0] = "true"{
    total = global.three_hundreds + global.one_hundreds + global.fiftys + global.miss
    if total > 0{
        global.percent = round((global.three_hundreds*6 + global.one_hundreds*2 + global.fiftys)/(total*6)*10000)/100
        percent = string(global.percent)
    }
    else {
        global.percent = 100
        percent = string(global.percent)
    }
    if global.percent = round(global.percent){
        percent = string_insert(".00", percent , string_length(percent)+1)
    }
    else if (global.percent >=10 and string_length(percent)<5){
        while find_count(percent, ".") < 2{
            percent = string_insert("0", percent , string_length(percent))
        }
    }
    else if (global.percent < 10 and string_length(percent)) < 4{
        while find_count(percent, ".") < 2{
            percent = string_insert("0", percent , string_length(percent))
        }
    }
    show = percent
    com_slot = 0
    while (string_length(show)>0){
        num = real(string_char_at(show, 1))
        thing = string_char_at(show, 1)
        show = string_delete(show, 1, 1)
        if thing = "."{
            a = instance_create(argument[2]+com_slot*50,argument[3],argument[4])
            with a {
                sprite_index = s_fdot
                image_speed = 0
                depth = -1
            }
             com_slot +=0.5
        }
        else{
            a = instance_create(argument[2]+com_slot*50,argument[3],argument[4])
            with a {
                image_index = o_panel.num
                image_speed = 0
                depth = -1
            }
             com_slot ++
        }
       
    }
    a = instance_create(argument[2]+com_slot*50,argument[3],argument[4])
    with a {
        sprite_index = s_fpercent
        image_speed = 0
        depth = -1
    }
}
else{
    show = string(argument[1])
    com_slot = 0
    while (string_length(show)>0){
        num = real(string_char_at(show, 1))
        show = string_delete(show, 1, 1)
        a = instance_create(argument[2]+com_slot*50,argument[3],argument[4])
        with a {
            image_index = o_panel.num
            image_speed = 0
            depth = -1
        }
        com_slot ++
    }

}

