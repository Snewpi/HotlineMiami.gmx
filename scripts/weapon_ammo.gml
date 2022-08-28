///weapon_ammo(sprite)
// always place new weapon at the end of the list
var wepArr = -1;
var i = 0;

wepArr[i, 0] = "M16"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Shotgun"
wepArr[i, 1] = 6
i++;

wepArr[i, 0] = "Club"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Pipe"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Bat"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Knife"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "DoubleBarrel"
wepArr[i, 1] = 2
i++;

wepArr[i, 0] = "Silencer"
wepArr[i, 1] = 13
i++;

wepArr[i, 0] = "Sword"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Uzi"
wepArr[i, 1] = 30
i++;

wepArr[i, 0] = "Magnum"
wepArr[i, 1] = 6
i++;

wepArr[i, 0] = "Scorpion"
wepArr[i, 1] = 20
i++;

wepArr[i, 0] = "MP5"
wepArr[i, 1] = 30
i++;

wepArr[i, 0] = "Pool"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "PoolBroke"
wepArr[i, 1] = 13
i++;

wepArr[i, 0] = "Axe"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "NightStick"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Crowbar"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Machete"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Sledge"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Trophy"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Drill"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Pan"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "BoilingPot"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "Pot"
wepArr[i, 1] = 0
i++;

wepArr[i, 0] = "SilencedUzi"
wepArr[i, 1] = 30
i++;

wepArr[i, 0] = "9mm"
wepArr[i, 1] = 15
i++;

wepArr[i, 0] = "Kalashnikov"
wepArr[i, 1] = 30
i++;

i = 0;
var returnAmmo;
repeat(array_height_2d(wepArr)) {
    if (argument0 == i) {
        returnAmmo = wepArr[i, 1];
        wepArr = -1;    
        return returnAmmo;
    }
    if string_contains(argument0, wepArr[i, 0]) {
        returnAmmo = wepArr[i, 1];
        wepArr = -1;
        return returnAmmo;
    }
    i++;
}
return 0;
