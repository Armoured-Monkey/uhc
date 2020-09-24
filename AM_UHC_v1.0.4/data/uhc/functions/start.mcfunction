# Start Procedure

# Revert gamerules set for pre-game lobby
gamerule randomTickSpeed 3
gamerule doImmediateRespawn true 
gamerule doDaylightCycle true
gamerule fallDamage true

# Set everyone in team 0 to spectator team
team join uhc.11 @a[team=uhc.0]

# Team 11 = Spectator
gamemode spectator @a[team=uhc.11]

# Ensures all players in Survival
gamemode survival @a[team=!uhc.11]

scoreboard players set ticks uhc.timer 0
clear @a[gamemode=!creative]
kill @e[type=minecraft:item, tag=!global.ignore, tag=!global.ignore.kill]
time set 0
advancement revoke @a everything
schedule clear uhc:lobbytick
scoreboard objectives setdisplay sidebar
experience set @a 0 levels
experience set @a 0 points

# Spread Players
execute if score start uhc.border matches 4096 unless score solo uhc.lobby matches 1 run spreadplayers 0 0 100 2000 true @a[team=!uhc.11]
execute if score start uhc.border matches 2048 unless score solo uhc.lobby matches 1 run spreadplayers 0 0 75 1000 true @a[team=!uhc.11]
execute if score start uhc.border matches 1024 unless score solo uhc.lobby matches 1 run spreadplayers 0 0 50 500 true @a[team=!uhc.11]
execute if score start uhc.border matches 512 unless score solo uhc.lobby matches 1 run spreadplayers 0 0 25 250 true @a[team=!uhc.11]
execute if score start uhc.border matches 4096 unless score solo uhc.lobby matches 0 run spreadplayers 0 0 100 2000 false @a[team=!uhc.11]
execute if score start uhc.border matches 2048 unless score solo uhc.lobby matches 0 run spreadplayers 0 0 75 1000 false @a[team=!uhc.11]
execute if score start uhc.border matches 1024 unless score solo uhc.lobby matches 0 run spreadplayers 0 0 50 500 false @a[team=!uhc.11]
execute if score start uhc.border matches 512 unless score solo uhc.lobby matches 0 run spreadplayers 0 0 25 250 false @a[team=!uhc.11]


effect give @a minecraft:regeneration 5 100 true 
title @a[tag=!global.ignore.gui] title {"text":"GO!","color":"#0FF992"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~
function uhc:times
