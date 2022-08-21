var levelLimits = 64;
var acceleration = 0.5;
var moveScale = 1;
//If Masks Menu, inside elevator or dialogue exists, then do nothing.
if instance_exists(objMaskMenu) or instance_exists(objPhoneConversation) {} else {
global.test=0
with objElevator if touch=1 global.test=1 
if persistent=1 and global.test=1 nothing=1 else {

//Default Speed = 3.
myspeed=3

//Speed multiplier by wich player moves.
factor=1

//Biker's speed.
if object_index=objPlayerBiker {myspeed=3.5 factor=1}

if object_index=objPCrawl {myspeed=0.2 factor=1}

if object_index=objPlayerShieldMouse {myspeed=1 factor=1}

//Graham's speed (Walk Fast).
if global.maskindex=5 and global.maskon=1 {myspeed=3.5 factor=1}

//Brandon's speed (Walk Faster).
if global.maskindex=16 and global.maskon=1 {myspeed=4 factor=1}

//Up-Down Stairs movement.
if place_meeting(x,y,objShadowH) or place_meeting(x,y,objShadowV) {

if object_index=objPlayerShieldMouse {myspeed=1 factor=1}else{myspeed=2.25 factor=1.35}

}

//Carrying Hooker speed = Half of default speed.
if sprite_index=sprPWalkGirlfriend myspeed=1.5

//Trauma Movement's Speed.
if sprite_index=sprPWalkHospital myspeed=2
if object_index=objPlayerHospital  {factor=2 myspeed=1.5}

if global.maskindex=20 { moveScale=-1 }
//Nigel (Reversed Controls).
/*if global.maskindex=20 {
if keyboard_check_direct(ord(global.rightkey)) {
if myxspeed>-(myspeed) myxspeed-=0.5 else myxspeed=-(myspeed)
}

if keyboard_check_direct(ord(global.leftkey)) {
if myxspeed<(myspeed) myxspeed+=0.5 else myxspeed=(myspeed)
}

if keyboard_check_direct(ord(global.downkey)) {
if myyspeed>-(myspeed) myyspeed-=0.5 else myyspeed=-(myspeed)
}

if keyboard_check_direct(ord(global.upkey)) {
if myyspeed<(myspeed) myyspeed+=0.5 else myyspeed=(myspeed)
}
} else {*/

//Default Controls.

moveleft    = keyboard_check_direct(ord(global.leftkey))    || keyboard_check_direct(vk_left)
moveright   = keyboard_check_direct(ord(global.rightkey))   || keyboard_check_direct(vk_right)
moveup      = keyboard_check_direct(ord(global.upkey))      || keyboard_check_direct(vk_up)
movedown    = keyboard_check_direct(ord(global.downkey))    || keyboard_check_direct(vk_down)

if moveleft {
if myxspeed>-(myspeed) myxspeed-=(acceleration)*moveScale else myxspeed=(-(myspeed))*moveScale
}

if moveright {
if myxspeed<(myspeed) myxspeed+= (acceleration)*moveScale else myxspeed=(myspeed)*moveScale
}

if moveup {
if myyspeed>-(myspeed) myyspeed-=(acceleration)*moveScale else myyspeed=(-(myspeed))*moveScale
}

if movedown {
if myyspeed<(myspeed) myyspeed+= (acceleration)*moveScale else myyspeed=(myspeed)*moveScale
}

//}

//Adresses conflicts in directions.
if (!moveright and !moveleft) {
if myxspeed>0 myxspeed-=acceleration else {if myxspeed<-acceleration myxspeed+=acceleration else myxspeed=0}
}

if (!moveup and !movedown) {
if myyspeed>0 myyspeed-=acceleration else {if myyspeed<-acceleration myyspeed+=acceleration else myyspeed=0}
}



scrMoveSolidOn()
while (abs(myxspeed)+abs(myyspeed))>myspeed+2 {
myxspeed*=0.98
myyspeed*=0.98
}

//Leg index.
if abs(myxspeed)=0 and abs(myyspeed)=0 legindex=0 else {
legindex+=(abs(myxspeed)+abs(myyspeed))*0.1*factor

//Trauma's dizziness effect.
with objDizzy {if dizziness<1 dizziness+=0.01}

//Animate if the player is walking.
if scrIsWalking() image_index+=(abs(myxspeed)+abs(myyspeed))*0.05
}
legdir=point_direction(0,0,myxspeed,myyspeed)
if abs(myxspeed)>0 {
if place_free(x+myxspeed,y) x+=myxspeed else {
if myyspeed=0 {
if place_free(x+myxspeed,y-8) y-=myspeed else {
if place_free(x+myxspeed,y+8) y+=myspeed else {
move_contact_solid(90-sign(myxspeed)*90,abs(myxspeed)) 
myxspeed=0
}
}
}
}
}
if abs(myyspeed)>0 {
if place_free(x,y+myyspeed) y+=myyspeed else {
if myxspeed=0 {
if place_free(x-8,y+myyspeed) x-=myspeed else {
if place_free(x+8,y+myyspeed) x+=myspeed else {
move_contact_solid(-sign(myyspeed)*90,abs(myyspeed)) 
myyspeed=0
}
}
}
}
}
if x<-levelLimits x=-levelLimits
if x>room_width+levelLimits x=room_width+levelLimits
if y<-levelLimits y=-levelLimits
if y>room_height+levelLimits y=room_height+levelLimits
scrMoveSolidOff()
}
}
