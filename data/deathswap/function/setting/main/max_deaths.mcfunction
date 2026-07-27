execute unless score *max_deaths deathswap.setting matches 1.. run scoreboard players set *max_deaths deathswap.setting 5
scoreboard players add *max_deaths deathswap.setting 1
execute if score *max_deaths deathswap.setting matches 11.. run scoreboard players set *max_deaths deathswap.setting 1

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
