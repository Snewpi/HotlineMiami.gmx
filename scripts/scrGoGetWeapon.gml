globalvar check;
scrMoveSolidOn()
if weaponfind=0 {
i=0
target=-1231423
if checkreload>0 checkreload-=1 else {
checkreload=10
global.check=0
while i<instance_number(objWeapon) and global.check=0 {
target=scrInstanceNearest(objWeapon,i)
if instance_exists(target) {
//enemy can grab weapon here
if scrWeaponList(5, target.image_index) {
if !scrCollisionLineExt(x,y,target.x,target.y,4,objSolid,objShootThrough,objDoorV) {
global.check=1
weaponfind=1
}
}
}
i+=1
}
}

if weaponfind=0 and instance_exists(objPlayer) {
dist=point_distance(x,y,objPlayer.x,objPlayer.y)
if dist<64 {
dir=point_direction(objPlayer.x,objPlayer.y,x,y)
direction=dir-180
if place_free(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir)) {
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
}
image_speed=0.1
}
}

} else {
if !instance_exists(target) {weaponfind=0 speed=0} else {
speed=2 
direction=point_direction(x,y,target.x,target.y)
image_speed=0.2
if place_meeting(x,y,target) {
my_id=-123123
if (scrWeaponList(5, target.image_index)) {
    if (scrWeaponList(2, target.image_index)) {
        my_id = instance_create(x, y, objEnemyMelee);
    } else {
        my_id = instance_create(x, y, objEnemy);
    }
    my_id.sprite_index = asset_get_index("spr" + my_id.prefix + "Walk" + scrWeaponList(0, target.image_index));
} else exit;
/*
if target.image_index=0 {my_id=instance_create(x,y,objEnemy) my_id.sprite_index=sprEWalkM16}
if target.image_index=1 {my_id=instance_create(x,y,objEnemy) my_id.sprite_index=sprEWalkShotgun}
if target.image_index=2 {my_id=instance_create(x,y,objEnemyMelee) my_id.sprite_index=sprEWalkClub}
if target.image_index=3 {my_id=instance_create(x,y,objEnemyMelee) my_id.sprite_index=sprEWalkPipe}
if target.image_index=4 {my_id=instance_create(x,y,objEnemyMelee) my_id.sprite_index=sprEWalkBat}
if target.image_index=5 {my_id=instance_create(x,y,objEnemyMelee) my_id.sprite_index=sprEWalkKnife}
if target.image_index=6 {my_id=instance_create(x,y,objEnemy) my_id.sprite_index=sprEWalkDoubleBarrel}
if target.image_index=7 {my_id=instance_create(x,y,objEnemy) my_id.sprite_index=sprEWalkSilencer}
if target.image_index>7 exit
*/
if instance_exists(target) my_id.ammo=target.ammo
PlaySFX("Pick Up")
with target instance_destroy()
instance_destroy()
}

if !place_free(x+hspeed*3,y+vspeed*3) {
if !place_free(x+hspeed*3,y) hspeed=-hspeed
if !place_free(x,y+vspeed*3) vspeed=-vspeed
weaponfind=0
}

}
}

scrMoveSolidOff()
exit
