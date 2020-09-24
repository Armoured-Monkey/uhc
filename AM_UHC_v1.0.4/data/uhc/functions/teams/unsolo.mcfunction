playsound minecraft:ui.button.click master @p ~ ~ ~

# 1 = solo, 0 = no solo
execute unless score solo uhc.lobby matches 0 run scoreboard players set solo uhc.lobby 0
 
title @a actionbar {"text":"Normal Teams Only - No Solo.", "color":"#dd760f"}
