/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(objPlayer) < 150 && hp > 0){
	mp_potential_step(objPlayer.x, objPlayer.y, speedEnemy, true)
}



if(hp <= 0){
	instance_destroy()
	score += 10
}	


// faz o lenhador sempre virar para o lado do player
if (x < objPlayer.x){
	image_xscale = -1
}else{
	image_xscale = 1
}

