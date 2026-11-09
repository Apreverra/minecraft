setblock ~ ~ ~ air replace

summon item ~ ~0.5 ~ {Item:{id:"minecraft:bat_spawn_egg", count:1, components:{"minecraft:custom_name":'котл',"minecraft:entity_data":{id:"minecraft:bat",Tags:["boiler_spawner"]}}}}
kill @e[type=text_display, tag=boiler_display, distance=..4]
kill @e[type=marker, tag=boiler, distance=..4]

playsound entity.iron_golem.hurt block @a ~ ~ ~ 1.0 1.0
particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.05 20

kill @s