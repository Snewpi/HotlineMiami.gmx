var meleeArr = -1;
var i = 0;
meleeArr[i] = "Club"
i++;
meleeArr[i] = "Pipe"
i++;
meleeArr[i] = "Bat"
i++;
meleeArr[i] = "Knife"
i++;


//add weapon index here
var weapon = floor(random_range(0, array_length_1d(meleeArr)));
//reroll if sprite doesnt exist
if !sprite_exists(asset_get_index(prefix + "Walk" + meleeArr[weapon])) {
    //add weapon index here
    weapon = floor(random_range(0, array_length_1d(meleeArr)))
} else {
    return asset_get_index(prefix + "Walk" + meleeArr[weapon]);
}
