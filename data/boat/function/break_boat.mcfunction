playsound minecraft:entity.boat.paddle_water master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.item.break master @a ~ ~ ~ 1 0.8
particle minecraft:splash ~ ~0.2 ~ 0.5 0.2 0.5 0.1 30
particle minecraft:poof ~ ~0.5 ~ 0.3 0.2 0.3 0.05 10

summon item ~ ~0.5 ~ {Item:{id:"minecraft:oak_planks",count:3}}
summon item ~ ~0.5 ~ {Item:{id:"minecraft:stick",count:2}}

tellraw @p[distance=..3] {"text":"Лодка треснула под вами от напора воды!","color":"dark_red"}

kill @s