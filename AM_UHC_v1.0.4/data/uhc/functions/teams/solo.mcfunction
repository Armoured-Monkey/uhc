playsound minecraft:ui.button.click master @p ~ ~ ~

# 1 = solo, 0 = no solo
execute unless score solo uhc.lobby matches 1 run scoreboard players set solo uhc.lobby 1

team join uhc.12 @a[team=!uhc.11] 

title @a actionbar {"text":"Solo Teams Only.", "color":"#dd760f"}
