///string_is_melee(sprite);
var meleeArr = -1;;
meleeArr[0] = "Crowbar"
meleeArr[1] = "Pan"
meleeArr[2] = "Pool"
meleeArr[3] = "PoolBroke"
meleeArr[4] = "Axe"
meleeArr[5] = "Sledge"
meleeArr[6] = "Pot"
meleeArr[7] = "BoilingPot"
meleeArr[8] = "Machete"
meleeArr[9] = "Knife"
meleeArr[10] = "Sword"
meleeArr[11] = "Bat"
meleeArr[12] = "Club"
meleeArr[13] = "Pipe"
//meleeArr[13] = "Unarmed"
meleeArr[14] = "Bag"
meleeArr[15] = "Drill"
meleeArr[16] = "Trophy"
meleeArr[17] = "NightStick"


var i = 0;
repeat(array_length_1d(meleeArr)) {
    if string_contains(argument0, meleeArr[i]) {
        meleeArr = -1;
        return true;
    }
    i++;
}
