var map_id = argument[0];
var map_height = ds_grid_height(map_id);
var map_width = ds_grid_width(map_id);

var total_peaks = irandom(map_height * map_width * MAX_PEAKS);

while total_peaks > 0 {
    xx = irandom(map_width);
    yy = irandom(map_height);
    var target_tile = ds_grid_get(map_id, xx, yy);
    if is_real(target_tile) {
        target_tile.sprite_index = spr_peak;
        target_tile.elevation = irandom(MAX_ELEVATION);
        total_peaks -= 1;
        target_tile.image_index = target_tile.elevation;
        if target_tile.elevation == MAX_ELEVATION {
            mp_grid_add_cell(global.overworld_path_map, xx, yy);
        }
    }
}
    
