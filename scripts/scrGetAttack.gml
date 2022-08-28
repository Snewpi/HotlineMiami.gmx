//only used by melee enemies
var weapon = asset_get_index(string_replace(sprite_get_name(argument0), "Walk", "Attack"));
if (weapon != -1) {
    return weapon;
}
return argument0;

/*if argument0=sprEWalkClub or sprite_index=sprEWalkClub return sprEAttackClub
if argument0=sprEWalkPipe or sprite_index=sprEWalkPipe return sprEAttackPipe
if argument0=sprEWalkBat or sprite_index=sprEWalkBat return sprEAttackBat
if argument0=sprEWalkKnife or sprite_index=sprEWalkKnife return sprEAttackKnife
if argument0=sprPoliceWalkNightStick return sprPoliceAttackNightStick
if argument0=sprHoboWalkBat return sprHoboAttack
return argument0
