function exe_terrain_items_peaks(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array)
{
	var _is_fertile = exe_check_fertile(_descriptor_array);
	while(_is_fertile < 0)
		{
			show_debug_message("_is_fertile < 0");
			show_debug_message(string(_descriptor_array));
			var _any_found = 0;
			if exe_return_description(_descriptor_array,"barren_rocks") > 0
				{	_terrain_markers_array = exe_add_rocks_item(_terrain_markers_array);_is_fertile++;	_any_found++;
			show_debug_message("barren_rocks");		
					};
			if exe_return_description(_descriptor_array,"eroded_rocks") > 0
				{	_terrain_markers_array = exe_add_rocks_item(_terrain_markers_array);_is_fertile++;	_any_found++;
			show_debug_message("eroded_rocks");		
					};
			if exe_return_description(_descriptor_array,"fragile_ice_formations") > 0
				{	_terrain_markers_array = exe_add_icerocks_item(_terrain_markers_array);_is_fertile++;	_any_found++;
			show_debug_message("fragile_ice_formations");		
					};
			if exe_return_description(_descriptor_array,"natural_ice_habitats") > 0
				{	_terrain_markers_array = exe_add_icerocks_item(_terrain_markers_array);_is_fertile++;	_any_found++;
			show_debug_message("natural_ice_habitats");		
					};
					
			if _any_found < 1	{break;};
		};
	//if _is_fertile > 0	{_is_fertile +=2; };//peaks bonus
	while (_is_fertile > 0)//while
		{
			var _any_found = 0;
			if exe_return_description(_descriptor_array,"jungle") > 0
				{	_terrain_markers_array = exe_add_jungle_item(_terrain_markers_array);_is_fertile--;	_any_found++;};
			if exe_return_description(_descriptor_array,"swmap") > 0
				{	_terrain_markers_array = exe_add_swmap_item(_terrain_markers_array);_is_fertile--;	_any_found++;};
			if exe_return_description(_descriptor_array,"taiga") > 0
				{	_terrain_markers_array = exe_add_taiga_item(_terrain_markers_array);_is_fertile--; _any_found++;	};
			if exe_return_description(_descriptor_array,"tundra") > 0
				{	_terrain_markers_array = exe_add_tundra_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"steppe") > 0
				{	_terrain_markers_array = exe_add_steppe_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"prairie") > 0
				{	_terrain_markers_array = exe_add_prairie_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"savanna") > 0
				{	_terrain_markers_array = exe_add_savanna_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"wood") > 0
				{	_terrain_markers_array = exe_add_wood_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"forest") > 0
				{	_terrain_markers_array = exe_add_forest_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"grass") > 0
				{	_terrain_markers_array = exe_add_grass_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"dry_grass") > 0
				{	_terrain_markers_array = exe_add_dry_grass_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			if exe_return_description(_descriptor_array,"dry_wood") > 0
				{	_terrain_markers_array = exe_add_dry_wood_item(_terrain_markers_array);_is_fertile--;	_any_found++;	};
			
			if _any_found < 1	{break;};
		};
		
		
	return(_terrain_markers_array);
}