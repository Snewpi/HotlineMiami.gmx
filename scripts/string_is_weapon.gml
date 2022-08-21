///string_is_weapon(sprite, returnID);
//contains all weapons
var wepArr = -1;;
wepArr[0] = "M16"
wepArr[1] = "Shotgun"
wepArr[2] = "Club"
wepArr[3] = "Pipe"
wepArr[4] = "Bat"
wepArr[5] = "Knife"
wepArr[6] = "DoubleBarrel"
wepArr[7] = "Silencer"
wepArr[8] = "Sword"
wepArr[9] = "Uzi"
wepArr[10] = "Magnum"
wepArr[11] = "Scorpion"
wepArr[12] = "MP5"
wepArr[13] = "Pool"
wepArr[14] = "PoolBroke"
wepArr[15] = "Axe"
wepArr[16] = "NightStick"
wepArr[17] = "Crowbar"
wepArr[18] = "Machete"
wepArr[19] = "Sledge"
wepArr[20] = "Trophy"
wepArr[21] = "Drill"
wepArr[22] = "Pan"
wepArr[23] = "BoilingPot"
wepArr[24] = "Pot"
wepArr[25] = "SilencedUzi"
wepArr[26] = "9mm"
wepArr[27] = "Kalashnikov"

var i = 0;
repeat(array_length_1d(wepArr)) {
    if (argument1) {
        if string_contains(argument0, wepArr[i]) {
            wepArr = -1;
            return i;
        }
    } else {
        if (i == argument0) {
            wepArr = wepArr[i];
            return wepArr;
        }
    }
    i++;
}
//returns list of how many weapons sans toy gun and throwing weapons
return array_length_1d(wepArr);
