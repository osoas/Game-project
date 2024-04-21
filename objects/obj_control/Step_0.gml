if(global.levelUp == true){
	alarm[0]++;
	exit;	
}


if(global.exp >= global.exp_max){
	global.level +=1;
	global.exp = global.exp - global.exp_max;
	global.exp_max += 100
	global.levelUp = true;
	
	repeat(upgrade_num){
		var _upgrade = irandom(ds_grid_height(upgrades_grid) - 1)
		while(ds_list_find_index(upgrade_list,_upgrade) != -1) {
			_upgrade = irandom(ds_grid_height(upgrades_grid) - 1)
		}
		ds_list_add(upgrade_list, _upgrade)	
		
	}
	
}

function spawn_monstros(_monstro){

var _xr1 = global.rx1
var _xr2 = global.rx2
var _yr1 = global.ry1
var _yr2 = global.ry2

if(global.maxEnemy > global.enemies){
	var _xx = irandom_range(_xr1,_xr2)
	var _yy = irandom_range(_yr1,_yr2)
	if(instance_position(_xx,_yy,obj_colision) == noone){
		instance_create_layer(_xx,_yy,"enemies", _monstro)
		alarm[0] = spawn_time;
		global.enemies++;
		return false;
	}
	while(instance_position(_xx,_yy,obj_colision) != noone){
		_xx = irandom_range(_xr1,_xr2)
		_yy = irandom_range(_yr1,_yr2)
		instance_create_layer(_xx,_yy,"enemies", _monstro)
		alarm[0] = spawn_time;
		global.enemies++;

	}
	}else if(global.enemies == global.enemiesLie){
		global.in_room = false;
		global.enemies = 0;
		global.maxEnemy = 0;
		global.enemiesLie = 0;
	}
}


if(alarm[0] <= 0 && global.in_room){
	spawn_monstros(obj_inimigo);
	spawn_monstros(obj_inimigo2)
}