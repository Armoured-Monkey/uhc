gamemode spectator @a[scores={uhc.deaths=1}]
execute if entity @a[scores={uhc.deaths=1}] at @a run playsound minecraft:entity.lightning_bolt.thunder master @a
scoreboard players set @a uhc.deaths 0
tp @a[team=, tag=!global.ignore.pos] 0 253 0 
execute store result score Current uhc.border run worldborder get
