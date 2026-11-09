scoreboard objectives add ray_length dummy
scoreboard players set #laser ray_length 2
execute unless score #laser ray_length matches 1.. run function raycast:setup