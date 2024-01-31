function exe_check_fertile(_descriptor_array)
{
	var _is_fertile = 0;
	if exe_return_description(_descriptor_array,"fertile") > 0
		{	_is_fertile+=2;	};
	if exe_return_description(_descriptor_array,"barren") > 0
		{	_is_fertile--;	};
	if exe_return_description(_descriptor_array,"deep_snow_cover") > 0
		{	_is_fertile--;	};	
	if exe_return_description(_descriptor_array,"barren_rocks") > 0
		{	_is_fertile--;	};	
	if exe_return_description(_descriptor_array,"swmap") > 0
		{	_is_fertile+=2;	};	
	if exe_return_description(_descriptor_array,"jungle") > 0
		{	_is_fertile+=2;	};	
	if exe_return_description(_descriptor_array,"desert") > 0
		{	_is_fertile-=2;	};	
	if exe_return_description(_descriptor_array,"intense_heat") > 0
		{	_is_fertile-=2;	};	
	if exe_return_description(_descriptor_array,"rain") > 0
		{	_is_fertile++;	};	
	if exe_return_description(_descriptor_array,"stable_temperatures") > 0
		{	_is_fertile+=2;	};		
	if exe_return_description(_descriptor_array,"sandstorms") > 0
		{	_is_fertile--;	};
	if exe_return_description(_descriptor_array,"freezing_winds") > 0
		{	_is_fertile--;	};
		
	
	if exe_return_description(_descriptor_array,"steppe") > 0
		{	_is_fertile++;	};	
	if exe_return_description(_descriptor_array,"savanna") > 0
		{	_is_fertile++;	};		
	if exe_return_description(_descriptor_array,"prairie") > 0
		{	_is_fertile++;	};	
	if exe_return_description(_descriptor_array,"tundra") > 0
		{	_is_fertile++;	};		
	if exe_return_description(_descriptor_array,"taiga") > 0
		{	_is_fertile++;	};	
		
	if exe_return_description(_descriptor_array,"wood") > 0
		{	_is_fertile+=2;	};
	if exe_return_description(_descriptor_array,"forest") > 0
		{	_is_fertile+=3;	};
	if exe_return_description(_descriptor_array,"grass") > 0
		{	_is_fertile+=2;	};
	if exe_return_description(_descriptor_array,"dry_grass") > 0
		{	_is_fertile++;	};
	if exe_return_description(_descriptor_array,"dry_wood") > 0
		{	_is_fertile++;	};
		
	return(_is_fertile);
}