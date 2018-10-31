advancement revoke @s only multiplayer_sleep:start 

tag @s[nbt={Sleeping:1b}] add slept_in_bed 

execute if score #actionbar_anim variable matches 1.. run function multiplayer_sleep:announce/actionbar_anim
execute if entity @s[nbt={SleepTimer:99s}] at @s run function multiplayer_sleep:trigger

advancement grant @s only multiplayer_sleep:start slept_in_bed 