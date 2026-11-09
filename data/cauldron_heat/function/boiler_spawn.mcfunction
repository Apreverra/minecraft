# 1. Ставим полный котёл с водой
setblock ~ ~ ~ water_cauldron[level=3]

# 2. Спавним маркер для логики радиуса
summon marker ~ ~0.5 ~ {Tags:["boiler"]}

# 3. Голограмма над котлом
summon text_display ~ ~2.3 ~ {Tags:["boiler_display"],billboard:"vertical",view_range:0.15f,transformation:{scale:[0.8f,0.8f,0.8f]},text:[{text:"🔥 Паровой Котёл\n",color:"gold",bold:1b},{text:"Зона тепла: 10 блоков",color:"yellow"}]}

# 4. Ломание
summon interaction ~ ~0.5 ~ {Tags:["boiler_destroyer"], width:1.0f,height:1.0f,response:1b}

# 5. Начальные эффекты установки
playsound minecraft:block.anvil.place block @a ~ ~ ~ 1.0 0.8
particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0.05 25

# 6. Убираем летучую мышь от яйца
kill @s