schedule function nightfall:second 1s

scoreboard players add @a afk.checkAFK 1

execute as @a[scores={afk.checkAFK=150..}] at @s run function nightfall:check_afk
execute as @a[team=afk] at @s run function nightfall:remove_afk