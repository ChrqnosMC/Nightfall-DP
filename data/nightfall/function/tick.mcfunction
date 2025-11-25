scoreboard players enable @a afk
execute as @a[scores={afk=1..}] run function nightfall:trigger_afk

execute as @a at @s run function nightfall:connected_world

execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=2,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=3,predicate=nightfall:chance_10,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4}] at @s run function nightfall:spawn/illusioner_rider

tag @e[type=#raiders,tag=!raiders_check] add raiders_check

schedule function nightfall:tick 1t