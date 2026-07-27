#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/text_prefix.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text.prefix
execute unless score *language deathswap.setting matches 2.. run data modify storage deathswap:ui text.prefix set value [""]
execute if score *language deathswap.setting matches 2 run data modify storage deathswap:ui text.prefix set value [""]

#text.error_prefix
execute unless score *language deathswap.setting matches 2.. run data modify storage deathswap:ui text.error_prefix set value [{text: "Error > ",color:red}]
execute if score *language deathswap.setting matches 2 run data modify storage deathswap:ui text.error_prefix set value [{text: "錯誤 > ",color:red}]