tag @s add hvc.dying

# melon_bombed: every living player within 3 blocks of the death
execute as @a[tag=!hvc.dying,scores={hvc.deaths=0},distance=..3] run advancement grant @s only hvc:melon_bombed

# melon_bomber: the dying player, if at least one other living player was nearby
execute if entity @a[tag=!hvc.dying,scores={hvc.deaths=0},distance=..3] run advancement grant @s only hvc:melon_bomber

tag @s remove hvc.dying
