/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(10, 50, "score:" + string(score))
draw_healthbar(10, 30, 150, 15, objPlayer.hp, c_black, c_red, c_green, 0, true, true)