execute if score @s ray_step matches 0 run scoreboard players set @s ray_step 0
execute if score @s ray_step >= #laser ray_length run return 0
scoreboard players add @s ray_step 1
execute unless block ^ ^ ^0.25 minecraft:air run return 0
execute positioned ^ ^ ^0.25 run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.2} ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^0.25 run function raycast:ray_step