global.cmw = camera_get_view_width(view_camera[0])
global.cmh = camera_get_view_height(view_camera[0])
global.cmx = obj_player.x - global.cmw / 2;
global.cmy = obj_player.y - global.cmh / 2;


cam_velc = .07;
target = obj_player
shake_leng = 0
shake_time = 0
