function multiplayer_sleep:calculate

execute if score #announce_type variable matches ..0 run function multiplayer_sleep:announce/sleep_percent
execute if score #announce_type variable matches 1.. run function multiplayer_sleep:announce/remaining_players



execute store result score #world_time calc_variable run time query daytime

execute if score #world_time calc_variable matches 0..12540 if entity @s[scores={calc_variable=..0}] run function multiplayer_sleep:event/weather_clear
execute unless score #world_time calc_variable matches 0..12540 if entity @s[scores={calc_variable=..0}] run function multiplayer_sleep:event/skip_night