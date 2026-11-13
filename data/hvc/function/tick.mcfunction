# Players who never died have no score yet, so initialise it
scoreboard players add @a hvc.deaths 0

# Handle players who just died while holding a full melon inventory
execute as @a[scores={hvc.deaths=1..},tag=hvc.melon_full] at @s run function hvc:melon_death

# Clear state for everyone who died this tick
tag @a[scores={hvc.deaths=1..}] remove hvc.melon_full
scoreboard players set @a[scores={hvc.deaths=1..}] hvc.deaths 0

# Refresh the "full of melon slices" state for everyone else
execute as @a[scores={hvc.deaths=0}] run function hvc:check_melons
