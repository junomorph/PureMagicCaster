#tick function

execute as @a[predicate=jmp_pmc:hold_pmc] at @s run function jmp_pmc:pmc/main

scoreboard players remove @a[scores={jmp_pmc.magica_refuel_delay=1..}] jmp_pmc.magica_refuel_delay 1
execute as @a unless score @s jmp_pmc.magica matches -2147483648..2147483647 run scoreboard players set @s jmp_pmc.magica 0
execute as @a unless score @s jmp_pmc.magica_refuel_delay matches -2147483648..2147483647 run scoreboard players set @s jmp_pmc.magica_refuel_delay 0
execute as @a[scores={jmp_pmc.magica_refuel_delay=..0}] if score @s jmp_pmc.magica < #config jmp_pmc.magica_capacity run scoreboard players add @s jmp_pmc.magica 1
scoreboard players remove @a[scores={jmp_pmc.is_using=1..}] jmp_pmc.is_using 1
tag @e[tag=jmp_pmc.beam_hit] remove jmp_pmc.beam_hit
tag @e[tag=jmp_pmc.instant_shard_hit] remove jmp_pmc.instant_shard_hit
execute as @a[tag=jmp_pmc.beam_inited,scores={jmp_pmc.is_using=..0}] run tag @s remove jmp_pmc.beam_inited
execute as @e[tag=jmp_pmc.beam,type=marker] if score @s jmp_pmc.link_id = *[tag=jmp_pmc.beam_inited,scores={jmp_pmc.is_using=..0}] jmp_pmc.link_id run kill @n