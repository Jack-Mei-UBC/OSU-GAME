tab = instance_create(1920,540,o_select)
tab.name = argument[0]
tab.difficulty = argument[1]
tab.star = argument[2]
tab.rank = argument[3]
tab.artist = argument[4]
tab.ar = argument[5]
tab.od = argument[6]
with tab {
    if difficulty = "Insane"{
        sprite_index = s_tab2
    }
    else if difficulty = "Linada's Insane"{
        sprite_index = s_tab
    }
}

