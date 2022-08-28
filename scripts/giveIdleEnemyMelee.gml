///giveIdleEnemyGun()
var wepArr = -1;
var i = 0;
wepArr[i] = "Club"
i++;
wepArr[i] = "Pipe"
i++;
wepArr[i] = "Bat"
i++;
wepArr[i] = "Knife"
i++;

//add weapon index here
var weapon = floor(random_range(0, array_length_1d(wepArr)));
//reroll if sprite doesnt exist
if !sprite_exists(asset_get_index(prefix + "Walk" + wepArr[weapon])) {
    //add weapon index here
    weapon = floor(random_range(0, array_length_1d(wepArr)))
} else {
    return asset_get_index(prefix + "Walk" + wepArr[weapon]);
}
