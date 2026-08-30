#function ./summon_shard_1
$execute facing ^$(x) ^$(y) ^10 run function jmp_pmc:pmc/staff/cast/shard_burst/shard
data remove storage jmp_pmc spread

scoreboard players add @s jmp_pmc.shard_burst_summon 1
execute if score @s jmp_pmc.shard_burst_summon matches ..9 run return run function jmp_pmc:pmc/staff/cast/shard_burst/summon_shard_1
execute if score @s jmp_pmc.shard_burst_summon matches 10.. run scoreboard players reset @s jmp_pmc.shard_burst_summon