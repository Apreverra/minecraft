execute if block ~ ~ ~ minecraft:water run tellraw @a {"text":"[DEBUG 2+] Вода найдена в блоке лодки (~ ~ ~)","color":"blue"}
execute if block ~ ~ ~ minecraft:water run function boat:break_boat

execute positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:water run tellraw @a {"text":"[DEBUG 2+] Вода найдена под днищем (~ ~-0.2 ~)","color":"blue"}
execute positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:water run function boat:break_boat