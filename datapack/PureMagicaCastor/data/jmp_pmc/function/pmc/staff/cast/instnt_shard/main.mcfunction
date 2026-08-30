#function jmp_pmc:tick
particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute positioned ~-0.875 ~-0.875 ~-0.875 as @e[dx=0,type=!#jmp_pmc:not_mob,tag=!jmp_pmc.instant_shard_hit,tag=!jmp_pmc.barriered,tag=!jmp_pmc.caster] positioned ~0.75 ~0.75 ~0.75 if entity @s[dx=0] run function jmp_pmc:pmc/staff/cast/instnt_shard/hit
execute if entity @s[distance=..20] if block ~ ~ ~ #jmp_pmc:no_collision positioned ^ ^ ^0.25 run function jmp_pmc:pmc/staff/cast/instnt_shard/main
