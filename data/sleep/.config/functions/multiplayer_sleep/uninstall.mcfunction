execute unless score #multiplayer_sleep variable matches 2 run tellraw @a [{"text":"\n"},{"text":"Data pack «Multiplayer Sleep» v2.2 removed :c! Our other projects ","color":"aqua"},{"text":"here","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/members/fancytweaks/projects"},"hoverEvent":{"action":"show_text","value":{"text":"minecraft.curseforge.com/members/fancytweaks/projects","color":"aqua"}}},{"text":". (By Fancy Tweaks Team)","color":"aqua"},{"text":"\n"}]



advancement revoke @a from multiplayer_sleep:root
scoreboard objectives remove variable
scoreboard objectives remove calc_variable
scoreboard objectives remove sleep_msg_vars