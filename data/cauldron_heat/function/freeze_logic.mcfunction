# +2
execute unless block ~ ~2 ~ air run scoreboard players remove @s cold_level 2
execute if block ~ ~1 ~ air run scoreboard players add @s cold_level 2

# только положительные
execute if score @s cold_level matches ..0 run scoreboard players set @s cold_level 0

# иммунитет
execute if score @s cold_immunity matches 1.. run scoreboard players remove @s cold_immunity 1
execute if score @s cold_immunity matches 1.. run scoreboard players set @s cold_level 0
execute if score @s cold_immunity matches 1.. run scoreboard players set @s cold_level 0
execute if score @s cold_immunity matches 1.. at @s run particle wax_off ~ ~1 ~ 0.2 0.3 0.2 0.01 1

# интерфейс для иммун
execute if score @s cold_immunity matches 1.. run scoreboard players operation @s immunity_sec = @s cold_immunity
execute if score @s cold_immunity matches 1.. run scoreboard players operation @s immunity_sec /= #20 const
execute if score @s cold_immunity matches 1.. run scoreboard players add @s immunity_sec 1
execute if score @s cold_immunity matches 1.. run title @s actionbar [{"text":"🛡: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"immunity_sec"},"color":"yellow","bold":true},{"text":" сек.","color":"yellow"}]

# интерфейс для холодр
execute if score @s cold_level matches 0 run title @s clear
execute if score @s cold_level matches 21..100 run title @s actionbar {"text":"❄", "color":"blue"}
execute if score @s cold_level matches 101..200 run title @s actionbar {"text":"❄❄", "color":"aqua"}
execute if score @s cold_level matches 201.. run title @s actionbar {"text":"!!! ❄❄❄ !!!", "color":"red"}


## БОЙЛЕР!!!
execute if entity @s[tag=near_boiler] run scoreboard players remove @s cold_level 5
execute if entity @s[tag=near_boiler] if score @s cold_level matches ..0 run scoreboard players set @s cold_level 0
execute if entity @s[tag=near_boiler] run return 1

# урон
execute if score @s cold_level matches 300.. run function cauldron_heat:freeze_damage