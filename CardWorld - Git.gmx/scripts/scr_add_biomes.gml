var map_id = argument[0];
var map_width = ds_grid_width(map_id);
var map_height = ds_grid_height(map_id);

for (ex = 0; ex < map_width; ex++) {
    for (ey = 0; ey < map_height; ey++) {
        var this_tile = instance_create(0,0,obj_tile);
        ds_grid_set(map_id, ex, ey, this_tile);
    }
}
