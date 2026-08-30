#function ./summon_shard_2
particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute positioned ~-0.875 ~-0.875 ~-0.875 as @e[dx=0,type=!#jmp_pmc:not_mob,tag=!jmp_pmc.barriered,tag=!jmp_pmc.caster] positioned ~0.75 ~0.75 ~0.75 if entity @s[dx=0] run damage @s 1 jmp_pmc:instant_damage
execute if entity @s[distance=..20] if block ~ ~ ~ #jmp_pmc:no_collision positioned ^ ^ ^0.25 run function jmp_pmc:pmc/staff/cast/shard_burst/shard
