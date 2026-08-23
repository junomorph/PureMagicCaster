#function ../standing

#execute if entity @s[scores={jmp_pmc.using=1..10,jmp_pmc.magica=20..}] anchored eyes positioned ^ ^-0.2 ^ run function jmp_pmc:pmc/staff/cast/instant_shard_summon
execute if entity @s[scores={jmp_pmc.using=1..10,jmp_pmc.magica=..19}] anchored eyes positioned ^ ^-0.5 ^ run return run function jmp_pmc:pmc/staff/cast/failed
execute if entity @s[scores={jmp_pmc.using=1..10,jmp_pmc.magica=20..}] anchored eyes positioned ^ ^-0.5 ^ run return run function jmp_pmc:pmc/staff/cast/instnt_shard/summon
execute if entity @s[scores={jmp_pmc.using=11..20,jmp_pmc.magica=..49}] anchored eyes positioned ^ ^-0.5 ^ run return run function jmp_pmc:pmc/staff/cast/failed
execute if entity @s[scores={jmp_pmc.using=11..20,jmp_pmc.magica=50..}] anchored eyes positioned ^ ^-0.5 ^ run return run function jmp_pmc:pmc/staff/cast/shard_burst/main
scoreboard players reset @s jmp_pmc.using