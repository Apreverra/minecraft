scoreboard players set @s ray_step 0
execute store result storage raycast:temp angle int 1 run scoreboard players get #global ray_angle
execute store result storage raycast:temp length int 1 run scoreboard players get #laser ray_length
function raycast:ray_draw with storage raycast:temp