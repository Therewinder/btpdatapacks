#
# Load config, calculation all players, and calculation of the need players according to the formulas.
# Equate the number of need players in the scoreboard objectives «calc_variable» to nearest sleeping player.
#

function .config:multiplayer_sleep/config

execute store result score #total_player_count calc_variable if entity @a
execute store result score #need_player_count calc_variable if entity @a[nbt={Dimension:0}]


execute store result score #total_sleep_count calc_variable if entity @a[nbt={Sleeping:1b}]
execute store result score #sleep_percent calc_variable if entity @a[nbt={Sleeping:1b}]



scoreboard players operation #need_player_count calc_variable *= #required_percent variable
scoreboard players operation #need_player_count calc_variable /= #100 calc_variable

scoreboard players operation #need_player_count calc_variable -= #total_sleep_count calc_variable
scoreboard players operation @s[tag=slept_in_bed] calc_variable = #need_player_count calc_variable



scoreboard players operation #sleep_percent calc_variable *= #100 calc_variable
scoreboard players operation #sleep_percent calc_variable /= #total_player_count calc_variable

scoreboard players operation #sleep_percent calc_variable *= #100 calc_variable
scoreboard players operation #sleep_percent calc_variable /= #required_percent variable