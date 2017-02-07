var map_id = argument[0];
var map_height = ds_grid_height(map_id);
var map_width = ds_grid_width(map_id);

var total_water = irandom(map_height * map_width * MAX_WATER);

while total_water > 0 {
    var body_of_water = irandom(total_water);
    total_water -= body_of_water;
    
    var place_water_x = irandom(map_width);
    var place_water_y = irandom(map_height);
    
    while body_of_water > 0 {
        var update_tile = ds_grid_get(map_id, place_water_x, place_water_y);
        var shift_x = choose(0, choose(-1,1));
        place_water_x = clamp(place_water_x + shift_x, 0, map_width);
        if shift_x = 0 {
            place_water_y = clamp(place_water_y + irandom_range(-1,1), 0, map_height);
        }
        if is_real(update_tile){
            if update_tile.sprite_index != (spr_water || spr_peak) {
                update_tile.sprite_index = spr_water;
                body_of_water -= 1;
            }
        }
    }
}
