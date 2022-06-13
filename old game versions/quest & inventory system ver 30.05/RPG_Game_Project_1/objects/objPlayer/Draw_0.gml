if (state == READY)
{
	draw_self();
	
	if (is_in_battle)
	{
		if (is_stunned > 0)
		{
			// TODO CHANGE ANIMATION SPRITE TO STUNNED?
			draw_text(x + string_width("*STUN")-1, y - sprite_height/2, "*STUNNED*")
		}
	
		if (objBattleManager.player_turn and objBattleManager.selected_player == index and is_stunned <= 0)
		{
			t_x = x + sprite_width - sprite_get_height(sprPointer)/2 -2;
			t_y = y - sprite_height/2 + sprite_get_width(sprPointer) -2;
			draw_sprite_ext(sprPointer, 0, t_x, t_y, 0.75, 1, -180, c_white, 1);
		}
	}
}
