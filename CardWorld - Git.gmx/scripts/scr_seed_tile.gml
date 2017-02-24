var tile = TILE_AT_LOCATION;
if is_real(tile){
    if !tile.room_key {
        randomize();
        tile.room_key = random_get_seed();
    }
    global.room_seed = tile.room_key;
}   
