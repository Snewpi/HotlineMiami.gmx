var weapon = asset_get_index(string_replace(sprite_get_name(argument0), "Walk", "Search"));
if (weapon != -1) {
    return weapon;
}
return argument0;

/*
if argument0=sprEWalkShotgun return sprESearchShotgun
if argument0=sprEWalkM16 return sprESearchM16
if argument0=sprEWalkDoubleBarrel return sprESearchDoubleBarrel
if argument0=sprEWalkKnife return sprESearchKnife
if argument0=sprEWalkBat return sprESearchBat
if argument0=sprEWalkClub return sprESearchClub
if argument0=sprEWalkPipe return sprESearchPipe
if argument0=sprEWalkSilencer return sprESearchSilencer
if argument0=sprPoliceWalkGun return sprPoliceSearchGun
if argument0=sprPoliceWalkM16 return sprPoliceSearchM16
if argument0=sprPoliceWalkShotgun return sprPoliceSearchShotgun
if argument0=sprPoliceWalkNightStick return sprPoliceSearchNightStick
if argument0=sprEFatWalk return sprEFatSearch
if argument0=sprPInspectorWalk return sprPInspectorSearch
return argument0
