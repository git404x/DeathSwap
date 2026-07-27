#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/swap_time.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players add *swap_time deathswap.setting 1
execute if score *swap_time deathswap.setting matches 10 run scoreboard players set *swap_time deathswap.setting 0

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~
