showammo = 0
if instance_exists(objPlayer) {
    if string_contains(sprite_get_name(objPlayer.sprite_index), "M16") {
        showammo = 1
        maxammo = 24
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Uzi") {
        showammo = 1
        maxammo = 30
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Scorpion") {
        showammo = 1
        maxammo = 20
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Magnum") {
        showammo = 1
        maxammo = 6
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "SilencedUzi") {
        showammo = 1
        maxammo = 30
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Shotgun") {
        showammo = 1
        maxammo = 6
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "DoubleBarrel") {
        showammo = 1
        maxammo = 2
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Silencer") {
        showammo = 1
        maxammo = 13
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "9mm") {
        showammo = 1
        maxammo = 15
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "Kalashnikov") {
        showammo = 1
        maxammo = 24
    }
    if string_contains(sprite_get_name(objPlayer.sprite_index), "MP5") {
        showammo = 1
        maxammo = 32
    }
    if showammo = 1 {
        ammostring = string(objPlayer.ammo) + "/" + string(maxammo) + "rnds"
        if ammoy < 16 ammoy += 4
        else ammoy = 20
    } else {
        ammostring = "NO GUN!"
        if instance_number(objEnemy) + instance_number(objKnockedOut) > 0 {
            if ammoy > -32 ammoy -= 1
        }
    }

    if instance_exists(objPlayerBiker) or instance_exists(objPlayerBikerHouse) {
        if objPlayer.ammo > 0 {
            showammo = 1 ammostring = string(objPlayer.ammo) + " KNIVES"
            if ammoy < 16 ammoy += 4
            else ammoy = 20
        } else {
            ammostring = "NO KNIVES!"
            if instance_number(objEnemy) + instance_number(objKnockedOut) > 0 {
                if ammoy > -32 ammoy -= 1
            }
        }
    }

    if global.done {
        if showfinished > 0 showfinished -= 1
        else showfinished = 240
        if showfinished < 121 scorestring = "YOU GOT " + string(global.drawscore) + "pts"
        else scorestring = "CHAPTER DONE!"
        ammostring = "GO TO CAR!"
        if instance_exists(objPlayerBiker) or instance_exists(objPlayerBikerHouse) ammostring = "GO TO BIKE"
        if ammoy < 20 ammoy += 1
        else ammoy = 20
    }
} else {
    if instance_exists(objDeadBody) {
    if objDeadBody.isPlayer = true {
        scorestring = "YOU'RE DEAD!"
        ammostring = "PRESS " + global.restartkey + " TO RESTART"
        if ammoy < 20 ammoy += 1
        else ammoy = 20
        }
    }
}
