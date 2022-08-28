///string_is_weapon(sprite, returnID);
//contains all weapons, always place new weapon at the end of list
var wepArr = -1;
var i = 0;
wepArr[i] = "M16"
i++;
wepArr[i] = "Shotgun"
i++;
wepArr[i] = "Club"
i++;
wepArr[i] = "Pipe"
i++;
wepArr[i] = "Bat"
i++;
wepArr[i] = "Knife"
i++;
wepArr[i] = "DoubleBarrel"
i++;
wepArr[i] = "Silencer"
i++;
wepArr[i] = "Sword"
i++;
wepArr[i] = "Uzi"
i++;
wepArr[i] = "Magnum"
i++;
wepArr[i] = "Scorpion"
i++;
wepArr[i] = "MP5"
i++;
wepArr[i] = "Pool"
i++;
wepArr[i] = "PoolBroke"
i++;
wepArr[i] = "Axe"
i++;
wepArr[i] = "NightStick"
i++;
wepArr[i] = "Crowbar"
i++;
wepArr[i] = "Machete"
i++;
wepArr[i] = "Sledge"
i++;
wepArr[i] = "Trophy"
i++;
wepArr[i] = "Drill"
i++;
wepArr[i] = "Pan"
i++;
wepArr[i] = "BoilingPot"
i++;
wepArr[i] = "Pot"
i++;
wepArr[i] = "SilencedUzi"
i++;
wepArr[i] = "9mm"
i++;
wepArr[i] = "Kalashnikov"
i++;



i = 0;
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
