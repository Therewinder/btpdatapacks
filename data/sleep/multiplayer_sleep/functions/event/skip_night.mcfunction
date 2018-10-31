#
# Checking the time, then adding in the correct proportions.
# /weather thunder 1 command needed for weather control.
#

execute store result score #calc_time calc_variable run time query daytime

execute if score #calc_time calc_variable matches 23500..23999 run weather thunder 1
execute if score #calc_time calc_variable matches 12000..13500 run time add 10000
execute if score #calc_time calc_variable matches 12000..13500 run scoreboard players add #calc_time calc_variable 10000

execute if score #calc_time calc_variable matches 23500..23999 run weather thunder 1
execute if score #calc_time calc_variable matches 13501..22500 run time add 1000
execute if score #calc_time calc_variable matches 13501..22500 run scoreboard players add #calc_time calc_variable 1000

execute if score #calc_time calc_variable matches 23500..23999 run weather thunder 1
execute if score #calc_time calc_variable matches 22501..23900 run time add 100
execute if score #calc_time calc_variable matches 22501..23900 run scoreboard players add #calc_time calc_variable 100

execute if score #calc_time calc_variable matches 23500..23999 run weather thunder 1
execute if score #calc_time calc_variable matches 23901..23990 run time add 10
execute if score #calc_time calc_variable matches 23901..23990 run scoreboard players add #calc_time calc_variable 10

execute if score #calc_time calc_variable matches 23500..23999 run weather thunder 1
execute if score #calc_time calc_variable matches 23991..23999 run time add 1
execute if score #calc_time calc_variable matches 23991..23999 run scoreboard players add #calc_time calc_variable 1

execute unless score #calc_time calc_variable matches 23999.. run function multiplayer_sleep:event/skip_night
execute as @p[tag=slept_in_bed] at @s run function multiplayer_sleep:announce/new_day