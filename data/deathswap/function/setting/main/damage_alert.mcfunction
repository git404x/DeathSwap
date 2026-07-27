#toggle damage_alert
scoreboard players add *damage_alert deathswap.setting 1
execute if score *damage_alert deathswap.setting matches 2.. run scoreboard players set *damage_alert deathswap.setting 0

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
