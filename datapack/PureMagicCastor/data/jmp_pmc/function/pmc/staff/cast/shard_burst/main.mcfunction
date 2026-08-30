#function ../main

playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5 0
playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.65 2 0
playsound entity.warden.attack_impact player @a ~ ~ ~ 1 0.4

scoreboard players remove @s jmp_pmc.magica 50
scoreboard players set @s jmp_pmc.magica_refuel_delay 20
scoreboard players reset @s jmp_pmc.using

scoreboard players set @s jmp_pmc.shard_burst_summon 0
function jmp_pmc:pmc/staff/cast/shard_burst/summon_shard_1