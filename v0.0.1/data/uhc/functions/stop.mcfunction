# Stops UHC mid-game

schedule clear uhc:times
tp @a 0 255 0
gamemode adventure @a[gamemode=!creative]
title @a subtitle {"text":"The game cannot be resumed","color":"#AD8608"}
title @a title {"text":"UHC Stopped", "color":"#FFC300"}
