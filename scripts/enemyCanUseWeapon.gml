//0 = weapon, 1 = label as gun
var wepArr = -1;
var i = 0;

wepArr[i, 0] = "M16"
wepArr[i, 1] = true
i++;

wepArr[i, 0] = "Shotgun"
wepArr[i, 1] = true
i++;

wepArr[i, 0] = "Club"
wepArr[i, 1] = false
i++;

wepArr[i, 0] = "Pipe"
wepArr[i, 1] = false
i++;

wepArr[i, 0] = "Bat"
wepArr[i, 1] = false
i++;

wepArr[i, 0] = "Knife"
wepArr[i, 1] = false
i++;

wepArr[i, 0] = "DoubleBarrel"
wepArr[i, 1] = true
i++;

wepArr[i, 0] = "Silencer"
wepArr[i, 1] = true
i++;

/*wepArr[i, 0] = "9mm"
wepArr[i, 1] = 15
i++;

wepArr[i, 0] = "Kalashnikov"
wepArr[i, 1] = 30
i++;
*/

i = 0;
var returnWeapon;
repeat(array_height_2d(wepArr)) {
    if (argument0 == i) {
        returnWeapon = wepArr[i, 1];
        wepArr = -1;    
        return returnWeapon;
    }
    if string_contains(argument0, wepArr[i, 0]) {
        returnWeapon = wepArr[i, 1];
        wepArr = -1;
        return returnWeapon;
    }
    i++;
}
return 0;
