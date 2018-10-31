execute if score #multiplayer_sleep variable matches 2 run tellraw @a [{"text":"\n"},{"text":"Data pack «Multiplayer Sleep» updated to v2.2! Our other projects ","color":"aqua"},{"text":"here","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/members/fancytweaks/projects"},"hoverEvent":{"action":"show_text","value":{"text":"minecraft.curseforge.com/members/fancytweaks/projects","color":"aqua"}}},{"text":". (By Fancy Tweaks Team)","color":"aqua"},{"text":"\n"}]
execute if score #multiplayer_sleep variable matches 2 run function .config:multiplayer_sleep/uninstall

execute unless score #multiplayer_sleep variable matches 0.. run tellraw @a [{"text":"\n"},{"text":"Data pack «Multiplayer Sleep» v2.2 installed! Our other projects ","color":"aqua"},{"text":"here","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/members/fancytweaks/projects"},"hoverEvent":{"action":"show_text","value":{"text":"minecraft.curseforge.com/members/fancytweaks/projects","color":"aqua"}}},{"text":". (By Fancy Tweaks Team)","color":"aqua"},{"text":"\n"}]
execute if score #multiplayer_sleep variable matches 3 run tellraw @a [{"text":"\n"},{"text":"Data pack «Multiplayer Sleep» v2.2 already installed! Our other projects ","color":"aqua"},{"text":"here","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/members/fancytweaks/projects"},"hoverEvent":{"action":"show_text","value":{"text":"minecraft.curseforge.com/members/fancytweaks/projects","color":"aqua"}}},{"text":". (By Fancy Tweaks Team)","color":"aqua"},{"text":"\n"}]



scoreboard objectives add variable dummy {"text":"Config Variables","color":"yellow"}
scoreboard objectives add calc_variable dummy {"text":"Temp Calculate Variable","color":"yellow"}
scoreboard objectives add sleep_msg_vars minecraft.custom:minecraft.sleep_in_bed {"text":"Sleep Msg Vars","color":"yellow"}

scoreboard players set #100 calc_variable 100
scoreboard players set #multiplayer_sleep variable 3
advancement revoke @a from multiplayer_sleep:root