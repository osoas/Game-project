if point_distance(x,y,obj_player.x,obj_player.y) <= 100{
	pode = true;
}

if(sprite_index = spr_bau_aberto && image_index == 4){
		image_speed = 0;
		pode = false
}

if(sprite_index = spr_bau_aberto && image_index == 4 && _arma == -1){
	
		var _num = irandom(5)
		_arma = instance_create_layer(x,y+50,"Weapons",armas[_num])
}


	if(keyboard_check_pressed(ord("Q")) and pode and sprite_index == spr_bau){
		sprite_index = spr_bau_aberto;

	}



if(obj_player.y < y + 20){
	depth = obj_player.depth -1
}else{
	depth = obj_player.depth + 1	
}