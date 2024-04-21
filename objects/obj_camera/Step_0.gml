if(instance_exists(target)){
		global.cmx = lerp(global.cmx,target.x - global.cmw / 2,.1 );
		global.cmy = lerp(global.cmy,target.y - global.cmh / 2,.1);
		
		global.cmx = clamp(global.cmx,0,room_width - global.cmw)
		global.cmy = clamp(global.cmy,0,room_height - global.cmh)

		camera_set_view_pos(view_camera[0],global.cmx,global.cmy);

}