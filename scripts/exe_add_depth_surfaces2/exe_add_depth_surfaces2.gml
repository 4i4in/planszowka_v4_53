function exe_add_depth_surfaces2()
{
	matrix_set(matrix_world, matrix_build_identity());
	
	surface_set_target(depth_surface);
	draw_surface(depth_surface2,0,0);
	
	surface_reset_target();
}