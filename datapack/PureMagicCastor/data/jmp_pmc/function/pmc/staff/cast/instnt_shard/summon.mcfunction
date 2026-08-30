#functions ./not_using

scoreboard players reset @s jmp_pmc.using
scoreboard players remove @s jmp_pmc.magica 20
scoreboard players set @s jmp_pmc.magica_refuel_delay 20
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5 0
playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.65 2 0
function jmp_pmc:pmc/staff/cast/instnt_shard/main
