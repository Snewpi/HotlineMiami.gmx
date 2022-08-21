if image_index > string_is_weapon("", false) {
    objPlayer.sprite_index = sprPWalkThrow; 
    objPlayer.throwindex = image_index - (string_is_weapon("", false) + 1);
} else { 
    objPlayer.sprite_index = asset_get_index(objPlayer.prefix + "Walk" + string_is_weapon(image_index, false));
}
show_debug_message(sprite_get_name(objPlayer.sprite_index))
/*
if image_index=0 objPlayer.sprite_index=sprPWalkM16
if image_index=1 objPlayer.sprite_index=sprPWalkShotgun
if image_index=2 objPlayer.sprite_index=sprPWalkClub
if image_index=3 objPlayer.sprite_index=sprPWalkPipe
if image_index=4 objPlayer.sprite_index=sprPWalkBat
if image_index=5 objPlayer.sprite_index=sprPWalkKnife
if image_index=6 objPlayer.sprite_index=sprPWalkDoubleBarrel
if image_index=7 objPlayer.sprite_index=sprPWalkSilencer
if image_index=8 objPlayer.sprite_index=sprPWalkSword
if image_index=9 objPlayer.sprite_index=sprPWalkUzi
if image_index=10 objPlayer.sprite_index=sprPWalkMagnum
if image_index=11 objPlayer.sprite_index=sprPWalkScorpion
if image_index=12 objPlayer.sprite_index=sprPWalkMP5
if image_index=13 objPlayer.sprite_index=sprPWalkPool
if image_index=14 objPlayer.sprite_index=sprPWalkPoolBroke
if image_index=15 objPlayer.sprite_index=sprPWalkAxe
if image_index=16 objPlayer.sprite_index=sprPWalkNightStick
if image_index=17 objPlayer.sprite_index=sprPWalkCrowbar
if image_index=18 objPlayer.sprite_index=sprPWalkMachete
if image_index=19 objPlayer.sprite_index=sprPWalkSledge
if image_index=20 objPlayer.sprite_index=sprPWalkTrophy
if image_index=21 objPlayer.sprite_index=sprPWalkDrill
if image_index=22 objPlayer.sprite_index=sprPWalkPan
if image_index=23 objPlayer.sprite_index=sprPWalkBoilingPot
if image_index=24 objPlayer.sprite_index=sprPWalkPot
if image_index=25 objPlayer.sprite_index=sprPWalkSilencedUzi

/*if image_index > string_is_weapon(image_index, false) {
    objPlayer.sprite_index = sprPWalkThrow 
    objPlayer.throwindex = image_index-27
}*/
//if image_index>26 {objPlayer.sprite_index=sprPWalkThrow objPlayer.throwindex=image_index-27}

if image_index>=0 global.flexibility[image_index]=1
global.barehanded=0
