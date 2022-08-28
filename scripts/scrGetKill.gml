/*if argument0=sprPWalkKnife or argument0=sprPAttackKnife {global.usedkill[3]=1 return objPKillKnife}
if argument0=sprPWalkMachete or argument0=sprPAttackMachete {global.usedkill[10]=1 return objPKillMachete}
if argument0=sprPWalkBoilingPot or argument0=sprPAttackBoilingPot {global.usedkill[14]=1 return objPKillBoilingPot}
if argument0=sprPWalkSledge or argument0=sprPAttackSledge {global.usedkill[11]=1 return objPKillSledge}
*/
if (scrWeaponList(6, sprite_get_name(argument0)) == 1) {
    return asset_get_index("obj" + objPlayer.prefix + "Kill" + scrWeaponList(7, sprite_get_name(argument0)));
}

if argument0=sprPWalkBag or argument0=sprPAttackBag return objPKillBlunt

if (scrWeaponList(6, sprite_get_name(argument0)) == 2) {
    return objPKillBlunt;
}
/*if argument0=sprPWalkBat or argument0=sprPAttackBat or 
argument0=sprPWalkCrowbar or argument0=sprPAttackCrowbar or 
argument0=sprPWalkClub or argument0=sprPAttackClub or 
argument0=sprPAttackPan or argument0=sprPWalkPan or 
argument0=sprPAttackPot or argument0=sprPWalkPot  or 
argument0=sprPWalkPipe or argument0=sprPAttackPipe or 
argument0=sprPWalkBag or argument0=sprPAttackBag return objPBluntKill
*/
/*if argument0=sprPWalkAxe or argument0=sprPAttackAxe {global.usedkill[7]=1 return objPKillAxe}
if argument0=sprPWalkSword or argument0=sprPAttackSword {global.usedkill[4]=1 return objPKillSword}
if argument0=sprPWalkPoolBroke or argument0=sprPAttackPoolBroke {global.usedkill[6]=1 return objPKillBrokenPool}
if argument0=sprPWalkPool or argument0=sprPAttackPool {global.usedkill[5]=1 return objPKillPool}
if argument0=sprPWalkDrill or argument0=sprPAttackDrill {global.usedkill[12]=1 return objPKillDrill}
*/
//if argument0=sprPWalkNightStick or argument0=sprPAttackNightStick {global.usedkill[8]=1 return objPBluntKill}
if argument0=sprPWalkThrow {
if objPlayer.throwindex=0 {global.usedkill[16]=1 return objPScissorKill}
if objPlayer.throwindex=1 {global.usedkill[17]=1 return objPBottleKill}
if objPlayer.throwindex=6 {global.usedkill[20]=1 return objPDartKill}
if objPlayer.throwindex=5 {global.usedkill[19]=1 return objPHammerKill}
if objPlayer.throwindex=3 {global.usedkill[18]=1 return objPBrickKill}
}
global.test=1
return objPlayer.defaultExecution;
