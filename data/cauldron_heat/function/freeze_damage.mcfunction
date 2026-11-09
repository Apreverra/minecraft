# замедление
effect give @s slowness 3 1 true

# урон холодком
damage @s 2.0 freeze

# типа замерзает
particle snowflake ~ ~1 ~ 0.5 1.0 0.5 0.05 10

# небольшое кд
scoreboard players set @s cold_level 200