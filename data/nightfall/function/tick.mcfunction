scoreboard players enable @a afk
execute as @a[scores={afk=1..}] run function nightfall:trigger_afk

execute as @a at @s run function nightfall:connected_world

execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=2,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=3,predicate=nightfall:chance_10,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5}] at @s run function nightfall:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=nightfall:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4}] at @s run function nightfall:spawn/illusioner_rider

tag @e[type=#raiders,tag=!raiders_check] add raiders_check

execute as @a[advancements={nightfall:consume_dreaming_bottle=true}] at @s run function nightfall:get_effect/get_dreaming
execute as @a[advancements={nightfall:check_sleep=true}] at @s run function nightfall:get_effect/remove_dreaming

scoreboard players enable @a live
execute as @a[scores={live=1..},team=!live] run function nightfall:join_team
execute as @a[scores={live=1..},team=live] run function nightfall:leave_team

schedule function nightfall:tick 1t