scoreboard players add #global ray_angle 4
execute if score #global ray_angle matches 360.. run scoreboard players remove #global ray_angle 360

scoreboard players enable @a ray_length
execute as @a[scores={ray_length=1..}] run scoreboard players operation #laser ray_length = @s ray_length
scoreboard players set @a[scores={ray_length=1..}] ray_length 0

execute as @e[type=minecraft:armor_stand,tag=ray_emitter] at @s run function raycast:ray_tick