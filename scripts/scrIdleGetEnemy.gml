if object_get_parent(object_index)=objEnemyIdle {
if room=rmTrainstationEntrance sprite_index=sprEWalkKnife else sprite_index=scrGiveEnemyWeapon(2);//choose(sprEWalkShotgun,sprEWalkM16)
//if room=rmTrainstationEntrance sprite_index=sprEWalkKnife else sprite_index=choose(sprEWalkShotgun,sprEWalkM16)
ammo = scrWeaponList(1, sprite_get_name(sprite_index));
}
