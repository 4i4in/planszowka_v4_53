function exe_add_plankton(_terrain_markers_array)
{
	var _tex_marker_pictr = tex_struct._terrain_cover_plankton;
	var _tex_marker_alpha = tex_struct._terrain_cover_plankton_alpha;
	var _vbuff = vbuff_64x64_flat;
			
	var _sx = tile_base_size/2 + irandom(floor(tile_base_size/2)) - tile_base_size/4;
	var _sy = tile_base_size/2 + irandom(floor(tile_base_size/2)) - tile_base_size/4;
	var _scale = random_range(0.75,1.5);
	var _cover = irandom_range(1,array_length(_tex_marker_pictr));
	var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
	_cover = variable_clone(_tex_marker_pictr[_cover-1]);
	var _zrot = irandom(359);
			
	var _push = [_sx,_sy,_alpha,_cover,_scale,_vbuff,_zrot];
	array_push(_terrain_markers_array,_push);
	
	return(_terrain_markers_array);
}