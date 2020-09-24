tp @a[team=, tag=!global.ignore.pos] 0 253 0 
loot replace entity @a hotbar.0 loot uhc:book
execute store result score PlayerCount uhc.lobby if entity @a
execute store result score AdminCount uhc.lobby if entity @a[gamemode=creative]
execute at @a run particle minecraft:dust 15 15 15 1 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force

execute unless score solo uhc.lobby matches 1 run scoreboard players enable @a uhc.team

# Join players to teams based on scoreboard number that is created via team selector in book.
team join uhc.1 @a[scores={uhc.team=1}]
team join uhc.2 @a[scores={uhc.team=2}]
team join uhc.3 @a[scores={uhc.team=3}]
team join uhc.4 @a[scores={uhc.team=4}]
team join uhc.5 @a[scores={uhc.team=5}]
team join uhc.6 @a[scores={uhc.team=6}]
team join uhc.7 @a[scores={uhc.team=7}]
team join uhc.8 @a[scores={uhc.team=8}]
team join uhc.9 @a[scores={uhc.team=9}]
team join uhc.10 @a[scores={uhc.team=10}]
team join uhc.11 @a[scores={uhc.team=11}]
team join uhc.12 @a[scores={uhc.team=12}]
scoreboard players set @a[team=uhc.0] uhc.team 0

team join uhc.0 @a[team=]
schedule function uhc:lobbytick 1t