execute if score #announce_vars variable matches ..0 run scoreboard players set @a sleep_msg_vars 1

execute as @p[scores={sleep_msg_vars=1}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Comes a new day...","color":"yellow"}
execute as @p[scores={sleep_msg_vars=2}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Stop yawning. Wake up!","color":"yellow"}
execute as @p[scores={sleep_msg_vars=3}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Rise and shine! Good morning everyone!","color":"yellow"}
execute as @p[scores={sleep_msg_vars=4}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"A new day dawns...","color":"yellow"}
execute as @p[scores={sleep_msg_vars=5}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Comes a new day... Comes a new adventures","color":"yellow"}
execute as @p[scores={sleep_msg_vars=6}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Again to collect a stupid crops...","color":"yellow"}
execute as @p[scores={sleep_msg_vars=7}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"Time to wake up!","color":"yellow"}
execute as @p[scores={sleep_msg_vars=8}] at @s run tellraw @a[nbt={Dimension:0}] {"text":"The sun already quite close","color":"yellow"}

function multiplayer_sleep:reset_scores