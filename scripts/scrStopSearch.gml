var weapon = asset_get_index(string_replace(sprite_get_name(argument0), "Search", "Walk"));
if (weapon != -1) {
    return weapon;
}
return argument0;
/*
if argument0=sprESearchShotgun return sprEWalkShotgun
if argument0=sprESearchM16 return sprEWalkM16
if argument0=sprESearchDoubleBarrel return sprEWalkDoubleBarrel
if argument0=sprESearchKnife return sprEWalkKnife
if argument0=sprESearchBat return sprEWalkBat
if argument0=sprESearchClub return sprEWalkClub
if argument0=sprESearchPipe return sprEWalkPipe
if argument0=sprESearchSilencer return sprEWalkSilencer
if argument0=sprPoliceSearchGun return sprPoliceWalkGun
if argument0=sprPoliceSearchNightStick return sprPoliceWalkNightStick
if argument0=sprPoliceSearchM16 return sprPoliceWalkM16
if argument0=sprPoliceSearchShotgun return sprPoliceWalkShotgun
if argument0=sprEFatSearch return sprEFatWalk
if argument0=sprPInspectorSearch return sprPInspectorWalk
return argument0
