if(global.pause == true or instance_exists(obj_hit_slow)){
	image_speed = 0;
	_spd = 0
	speed = 0
	sprite_index = sprI
	alarm[0]++
	alarm[1]++
	alarm[2]++
	exit;	
}else{
	image_speed = 1
}

hit_alpha = lerp(hit_alpha,0,0.1)
if(life <= 0){
	
	instance_create_layer(x,y,layer,obj_moeda)
	instance_destroy()
	global.enemiesLie++;
}





		
		sprite_index = sprR
		if(instance_exists(obj_player) && sprR != -1) {
		if(obj_player.x > x){
			image_xscale = 1;	
		}else if(obj_player.x < x){
			image_xscale = -1;
		{
		
		}
	
}


}

if(alarm[0] <= 0){
	debuff = -1;
	alarm[0] = 180
}
switch(debuff){
	case "lentidão":
		_spd = 0.6;
		if(alarm[0] == -1){
			alarm[0] = 120;
		}
		hit_alpha = .3;
		hit_color = c_aqua;
	break;
	case "knockback":
		_dir = point_direction(x,y,obj_player.x,obj_player.y)
		_dir += 180
		
		if(_dir >=360){
		_dir -= 360	
		}
		
		var _hspd = lengthdir_x(10,_dir)
		var _vspd = lengthdir_y(10,_dir)
		var _hspd2 = lengthdir_x(20,_dir)
		var _vspd2 = lengthdir_y(20,_dir)
		if instance_position(x+_hspd2 ,y+_vspd2,obj_colision) == noone{
			x += _hspd
			y += _vspd
		}else{
			debuff = -1	
		}
	break;
	case "queimando":

	if(alarm[2] <=0){
		alarm[2]	 = 60
		life -= 10
}
	
		hit_alpha = .3;
		hit_color = c_red;
	break;
	default:
		hit_alpha = 0;
		_spd = 2;
		hit_color = c_white
	break;

}

















if(alarm[1] <= 0){
		_gesto = irandom(1)
		alarm[1] = 200


}


if(_gesto == 0){
	var _x1 = x
	var _y1= y
	sprite_index = sprR
	var _x2 = (obj_player.x div 32) * 32 +16;
	var _y2 = (obj_player.y div 32) * 32 +16;
	if(mp_grid_path(obj_control.mp_grid,caminho,_x1,_y1,_x2,_y2,true)){
		path_start(caminho,_spd,path_action_stop,false)	
	}

}else if _gesto == 1{
	sprite_index = sprI
	path_speed = 0;	
}
