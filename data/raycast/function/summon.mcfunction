summon minecraft:armor_stand ~ ~ ~ {Tags:["ray_emitter"],CustomName:{text:"Ray Emitter", color:"aqua"},CustomNameVisible:1b,NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b}
scoreboard players set @e[type=minecraft:armor_stand,tag=ray_emitter,sort=nearest,limit=1] ray_angle 0
scoreboard players set @e[type=minecraft:armor_stand,tag=ray_emitter,sort=nearest,limit=1] ray_step 0