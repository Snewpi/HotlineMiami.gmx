///scrWeaponList(action, sprite)
// moving everything into one script (going to look ugly but whatever saves time)

//0 - returns name
//1 - returns ammo
//2 - returns melee
//3 - returns gun
//4 - returns nurmber of weapons
//5 - returns enemy can use weapon
//6 - returns value of execution
//7 - returns execution name
//8 - returns random spawn

var wepArr = -1;
wepArr[0, 0] = "M16"    //Name(case sensitive)
wepArr[0, 1] = 24       // ammo count
wepArr[0, 2] = 1        // is gun = 1, is melee = 0
wepArr[0, 3] = true     // can spawn randomly
wepArr[0, 4] = true     // enemy can use weapon (spawning with weapon is in scrGiveEnemyWeapon)
wepArr[0, 5] = 0        // 0 = can't execute, 1 = can execute, 2 = use blunt execution

wepArr[1, 0] = "Shotgun"
wepArr[1, 1] = 6
wepArr[1, 2] = 1
wepArr[1, 3] = true
wepArr[1, 4] = true
wepArr[1, 5] = 0

wepArr[2, 0] = "Club"
wepArr[2, 1] = 0
wepArr[2, 2] = 0
wepArr[2, 3] = true
wepArr[2, 4] = true
wepArr[2, 5] = 2

wepArr[3, 0] = "Pipe"
wepArr[3, 1] = 0
wepArr[3, 2] = 0
wepArr[3, 3] = true
wepArr[3, 4] = true
wepArr[3, 5] = 2

wepArr[4, 0] = "Bat"
wepArr[4, 1] = 0
wepArr[4, 2] = 0
wepArr[4, 3] = true
wepArr[4, 4] = true
wepArr[4, 5] = 2

wepArr[5, 0] = "Knife"
wepArr[5, 1] = 0
wepArr[5, 2] = 0
wepArr[5, 3] = true
wepArr[5, 4] = true
wepArr[5, 5] = 1

wepArr[6, 0] = "DoubleBarrel"
wepArr[6, 1] = 2
wepArr[6, 2] = 1
wepArr[6, 3] = true
wepArr[6, 4] = true
wepArr[6, 5] = 0

wepArr[7, 0] = "Silencer"
wepArr[7, 1] = 13
wepArr[7, 2] = 1
wepArr[7, 3] = true
wepArr[7, 4] = true
wepArr[7, 5] = 0

wepArr[8, 0] = "Sword"
wepArr[8, 1] = 0
wepArr[8, 2] = 0
wepArr[8, 3] = true
wepArr[8, 4] = false
wepArr[8, 5] = 1

wepArr[9, 0] = "Uzi"
wepArr[9, 1] = 30
wepArr[9, 2] = 1
wepArr[9, 3] = true
wepArr[9, 4] = false
wepArr[9, 5] = 0

wepArr[10, 0] = "Magnum"
wepArr[10, 1] = 6
wepArr[10, 2] = 1
wepArr[10, 3] = true
wepArr[10, 4] = false
wepArr[10, 5] = 0

wepArr[11, 0] = "Scorpion"
wepArr[11, 1] = 20
wepArr[11, 2] = 1
wepArr[11, 3] = true
wepArr[11, 4] = false
wepArr[11, 5] = 0

wepArr[12, 0] = "MP5"
wepArr[12, 1] = 32
wepArr[12, 2] = 1
wepArr[12, 3] = true
wepArr[12, 4] = false
wepArr[12, 5] = 0

wepArr[13, 0] = "Pool"
wepArr[13, 1] = 0
wepArr[13, 2] = 0
wepArr[13, 3] = false
wepArr[13, 4] = false
wepArr[13, 5] = 1

wepArr[14, 0] = "PoolBroke"
wepArr[14, 1] = 0
wepArr[14, 2] = 0
wepArr[14, 3] = false
wepArr[14, 4] = false
wepArr[14, 5] = 1

wepArr[15, 0] = "Axe"
wepArr[15, 1] = 0
wepArr[15, 2] = 0
wepArr[15, 3] = true
wepArr[15, 4] = false
wepArr[15, 5] = 1

wepArr[16, 0] = "NightStick"
wepArr[16, 1] = 0
wepArr[16, 2] = 0
wepArr[16, 3] = false
wepArr[16, 4] = false
wepArr[16, 5] = 2

wepArr[17, 0] = "Crowbar"
wepArr[17, 1] = 0
wepArr[17, 2] = 0
wepArr[17, 3] = false
wepArr[17, 4] = false
wepArr[17, 5] = 2

wepArr[18, 0] = "Machete"
wepArr[18, 1] = 0
wepArr[18, 2] = 0
wepArr[18, 3] = true
wepArr[18, 4] = false
wepArr[18, 5] = 1

wepArr[19, 0] = "Sledge"
wepArr[19, 1] = 0
wepArr[19, 2] = 0
wepArr[19, 3] = true
wepArr[19, 4] = false
wepArr[19, 5] = 1

wepArr[20, 0] = "Trophy"
wepArr[20, 1] = 0
wepArr[20, 2] = 0
wepArr[20, 3] = false
wepArr[20, 4] = false
wepArr[20, 5] = 0

wepArr[21, 0] = "Drill"
wepArr[21, 1] = 0
wepArr[21, 2] = 0
wepArr[21, 3] = false
wepArr[21, 4] = false
wepArr[21, 5] = 1

wepArr[22, 0] = "Pan"
wepArr[22, 1] = 0
wepArr[22, 2] = 0
wepArr[22, 3] = false
wepArr[22, 4] = false
wepArr[22, 5] = 2

wepArr[23, 0] = "BoilingPot"
wepArr[23, 1] = 0
wepArr[23, 2] = 0
wepArr[23, 3] = false
wepArr[23, 4] = false
wepArr[23, 5] = 1

wepArr[24, 0] = "Pot"
wepArr[24, 1] = 0
wepArr[24, 2] = 0
wepArr[24, 3] = false
wepArr[24, 4] = false
wepArr[24, 5] = 2

wepArr[25, 0] = "SilencedUzi"
wepArr[25, 1] = 30
wepArr[25, 2] = 1
wepArr[25, 3] = false
wepArr[25, 4] = false
wepArr[25, 5] = 0

wepArr[26, 0] = "9mm"
wepArr[26, 1] = 15
wepArr[26, 2] = 1
wepArr[26, 3] = true
wepArr[26, 4] = false
wepArr[26, 5] = 0

wepArr[27, 0] = "Kalashnikov"
wepArr[27, 1] = 24
wepArr[27, 2] = 1
wepArr[27, 3] = true
wepArr[27, 4] = true
wepArr[27, 5] = 0



var i = 0;
var returnVal;
repeat (array_height_2d(wepArr)) {

    //return 0
    if (argument[0] == 0) {
        if (argument[1] == i) {
            returnVal = wepArr[i, 0];
            wepArr = -1;
            return returnVal;
        }
        if (string_contains(argument[1], wepArr[i, 0])) {
            wepArr = -1;
            return i;
        }
    } 
    //return 1
    if (argument[0] == 1) {
        if (argument[1] == i) {
            returnVal = wepArr[i, 1]
            wepArr = -1;
            return returnVal;
        }
        if (string_contains(argument[1], wepArr[i, 0])) {
            returnVal = wepArr[i, 1];
            wepArr = -1;
            return returnVal;
        }
                
    }
    
    //return 2
    if (argument[0] == 2) {
        if (argument[1] == i) {
            if (wepArr[i, 2] == 0) {
                wepArr = -1;
                return true;
            }
        }
        if (string_contains(argument[1], wepArr[i, 0])) {
            if (wepArr[i, 2] == 0) {
                wepArr = -1;
                return true;
            }
        }
    }
    
    //return 3
    if (argument[0] == 3) {
        if (argument[1] == i) {
            if (wepArr[i, 2] == 1) {
                wepArr = -1;
                return true;
            }
        }
        if (string_contains(argument[1], wepArr[i, 0])) {
            if (wepArr[i, 2] == 1) {
                wepArr = -1;
                return true;
            }
        }
    }
    
    //return 4
    if (argument[0] == 4) {
        returnVal = array_height_2d(wepArr);   
        wepArr = -1;
        return returnVal;  
    }
    
    //return 5
    if (argument[0] == 5) {
        if (argument[1] < array_height_2d(wepArr)) && (wepArr[argument[1], 4] == true) {
            wepArr = -1;
            return true;
        }
    }
    
    //return 6
    if (argument[0] == 6) {
        if (string_contains(argument[1], wepArr[i, 0])) {
            returnVal = wepArr[i, 5];
            wepArr = -1;
            return returnVal;
        }
    }
    
   // return 7
   if (argument[0] == 7) {
       if (string_contains(argument[1], wepArr[i, 0])) { 
            returnVal = wepArr[i, 0];
            wepArr = -1;
            return returnVal;
       }
   }
   // return 7
   if (argument[0] == 7) {
       if (string_contains(argument[1], wepArr[i, 0])) { 
            returnVal = wepArr[i, 0];
            wepArr = -1;
            return returnVal;
       }
   }
   
   //return 8
   if (argument[0] == 8) {
       if (argument[1] < array_height_2d(wepArr)) {
           returnVal = wepArr[argument[1], 3];
           wepArr = -1;
           return returnVal;
       } else {
         wepArr = -1;
         return true;
       }
   }
   
    i++;
}

return 0;
