/// @description Insert description here
// You can write your code in this editor

//movimentação h
moveUp = keyboard_check(ord("W"))

moveDown = keyboard_check(ord("S"))

moveLeft = keyboard_check(ord("A"))

moveRight = keyboard_check(ord("D"))
shoot = mouse_check_button(mb_left)
if (moveRight){
	hspeed = PlayerSpeed
}
else if (moveLeft){
	hspeed = -PlayerSpeed
}
else{
	hspeed = 0
}
//movimentação v
if (moveUp){
	vspeed = -PlayerSpeed
}
else if(moveDown){
	vspeed = PlayerSpeed
}else {
	vspeed =0
}

//mudando as animações
if(speed == 0){
	sprite_index = sprPlayerIdle
}else{
	sprite_index = sprPlayerRun
}
if (x < window_views_mouse_get_x()){
	image_xscale = 1
}else{
	image_xscale = -1
}


//movimentar a arma

objGun.x = x

objGun.y = y


//Atirar
if(shoot){
	instance_create_depth(objGun.x, objGun.y, 0, objBullet)
}



if(hp <= 0){
	room_goto(room_first)
}

// venceu!
if(score >= 100){
	if(room == roomGame){
		room_goto_next()
	} else if(room == roomGame2){
		room_goto_next()
		 
	}
}
