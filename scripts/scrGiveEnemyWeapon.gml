//;scrGiveEnemyWeapon(useMelee)

var melee;
var gun;

//mafia weapons
if (prefix == "E") {
    melee = choose("Club", "Pipe", "Knife", "Bat");
    gun = choose("M16", "DoubleBarrel", "Shotgun", "Kalashnikov");
}

//pick any weapon
if (argument0 == 0) {
    return asset_get_index("spr" + prefix + "Walk" + choose(melee, gun)); 
}

//pick melee
if (argument0 == 1) {
    return asset_get_index("spr" + prefix + "Walk" + melee);
}

//pick gun
if (argument0 == 2) {
    return asset_get_index("spr" + prefix + "Walk" + gun);
}
