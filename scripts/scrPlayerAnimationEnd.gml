image_speed=0
if sprite_index=sprPUnlockDoor {
my_id=instance_create(x,y,objPlayerJacket)
my_id.ammo=ammo
global.maskon=1
my_id.maskon=1
instance_destroy()
exit
}
if sprite_index=sprPHeadExplode {
instance_destroy()
objEffector.brus=10
with objDreamPlayer {
alarm[0]=100
}
exit
}

var currentSprite = sprite_get_name(sprite_index);
if string_contains(currentSprite, "spr" + prefix + "Attack") {

    //melee + melee extras
    if (scrWeaponList(2, currentSprite)) or
       (sprite_index == sprPAttackUnarmed) or 
       (sprite_index == sprPAttackBag) {
            left=-left
    }
    //extras
    if (sprite_index == sprPAttackDoubleBarrel1) or
       (sprite_index == sprPAttackDoubleBarrel2) {
        currentSprite = "sprPWalkDoubleBarrel"
    }
    
    if (sprite_index == sprPAttackThrow) {
        currentSprite = "sprPWalkUnarmed"
    }
    
    sprite_index = asset_get_index(string_replace(currentSprite, "Attack", "Walk"));
}

if sprite_index=sprPMaskSlip {
sprite_index=sprPWalkUnarmed 
maskon=1 
global.maskon=1 
if global.maskindex=9 energie=1
if global.maskindex=21 energie=2
if global.maskindex=6 {if room=rmPoliceHQFloor1 sprite_index=sprPWalkNightStick else sprite_index=sprPWalkKnife ammo=0} 
if global.maskindex=23 {sprite_index=sprPWalkDrill ammo=0}
if global.maskindex=3 {with objWeapon {if object_index=objWeapon {image_index=choose(0,1,6) scrGunIndexGetAmmo(image_index)}}} 
if global.maskindex=17 {with objWeapon {if object_index=objWeapon {image_index=choose(2,3,4,5) ammo=0}}}
if global.maskindex=25 {sprite_index=sprPWalkSilencedUzi global.usedgun[8]=1 ammo=30}
global.usedmask[global.maskindex]=1
}
if sprite_index=sprPLeaveBag {sprite_index=sprPWalkUnarmed maskon=1 global.maskon=1}
