#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/sidebar/play_status.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#shared_object
function deathswap:ui/sidebar/shared_object {score_objectives:"deathswap.display.play_status"}

#---
#round
scoreboard players set *swap_count deathswap.display.play_status -1

execute if score *language deathswap.setting matches 1 run \
scoreboard players display name *swap_count deathswap.display.play_status ["",\
    {text:"Swap Count: "},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]
execute if score *language deathswap.setting matches 2 run \
scoreboard players display name *swap_count deathswap.display.play_status ["",\
    {text:"交換次數："},\
    {score:{name:"*swap_count",objective:"deathswap.status"},color:"green"}\
]

#---
#round_time
execute if score *swap_time deathswap.setting matches 0..4 run scoreboard players set *round_time deathswap.display.play_status -2
execute if score *swap_time deathswap.setting matches 5..9 run scoreboard players reset *round_time deathswap.display.play_status

execute if score *swap_time deathswap.setting matches 0..4 if score *language deathswap.setting matches 1 run \
scoreboard players display name *round_time deathswap.display.play_status ["",\
    {text:"Round Time: "},\
    {storage:"deathswap:ui",nbt:"time.round_time.display",interpret:true,color:"green"}\
]
execute if score *swap_time deathswap.setting matches 0..4 if score *language deathswap.setting matches 2 run \
scoreboard players display name *round_time deathswap.display.play_status ["",\
    {text:"回合時間："},\
    {storage:"deathswap:ui",nbt:"time.round_time.display",interpret:true,color:"green"}\
]

#---
#play_time
execute if score *swap_time deathswap.setting matches 0..4 run scoreboard players set *play_time deathswap.display.play_status -3
execute if score *swap_time deathswap.setting matches 5..9 run scoreboard players reset *play_time deathswap.display.play_status

execute if score *swap_time deathswap.setting matches 0..4 if score *language deathswap.setting matches 1 run \
scoreboard players display name *play_time deathswap.display.play_status ["",\
    {text:"Play Time: "},\
    {storage:"deathswap:ui",nbt:"time.play_time.display",interpret:true,color:"green"}\
]
execute if score *swap_time deathswap.setting matches 0..4 if score *language deathswap.setting matches 2 run \
scoreboard players display name *play_time deathswap.display.play_status ["",\
    {text:"遊玩時間："},\
    {storage:"deathswap:ui",nbt:"time.play_time.display",interpret:true,color:"green"}\
]

#---
#blank
scoreboard players set *blank_1 deathswap.display.play_status -10
scoreboard players display name *blank_1 deathswap.display.play_status ""

#death_counts
execute as @a[team=!spectator] run scoreboard players operation @s deathswap.display.play_status = @s deathswap.death
