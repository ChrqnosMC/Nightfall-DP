schedule clear nightfall:second

scoreboard objectives remove afk.x1
scoreboard objectives remove afk.x2
scoreboard objectives remove afk.y1
scoreboard objectives remove afk.y2
scoreboard objectives remove afk.z1
scoreboard objectives remove afk.z2
scoreboard objectives remove afk.checkAFK
scoreboard objectives remove afk
team remove afk

scoreboard objectives remove Health

schedule clear nightfall:tick
tellraw @a ["",{"text":"Nightfall datapack has been uninstall"}]