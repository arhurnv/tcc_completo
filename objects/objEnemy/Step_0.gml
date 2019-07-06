/// @description Insert description here
// You can write your code in this editor
//perseguir o player
if (distance_to_object(objPlayer) < 150 && hp > 0){
	mp_potential_step(objPlayer.x, objPlayer.y, speedEnemy, true)
}
if(hp <=0){
	sprite_index = sprEnemyMorto
	timer +=1
	if(timer >= 20){
		instance_destroy()
	score +=10
	}
	
}

//atacar o heroi
if(distance_to_object(objPlayer) < 2){
	objPlayer.hp -= 1	
}