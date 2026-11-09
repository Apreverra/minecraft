execute as @e[type=bat,tag=boiler_spawner] at @s run function cauldron_heat:boiler_spawn
execute as @e[type=marker,tag=boiler] at @s run function cauldron_heat:boiler_particles
tag @a remove near_boiler
execute as @e[type=marker,tag=boiler] at @s as @a[distance=..10] run tag @s add near_boiler
execute as @a unless score @s cold_level = @s cold_level run scoreboard players set @s cold_level 0
execute as @a[scores={deaths=1..}] at @s run function cauldron_heat:on_respawn
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function cauldron_heat:freeze_logic
execute as @e[type=interaction,tag=boiler_destroyer] at @s if data entity @s attack run function cauldron_heat:boiler_break
execute as @a unless score @s cold_level = @s cold_level run scoreboard players set @s cold_level 0
execute as @a[scores={deaths=1..}] at @s run function cauldron_heat:on_respawn
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function cauldron_heat:freeze_logic
