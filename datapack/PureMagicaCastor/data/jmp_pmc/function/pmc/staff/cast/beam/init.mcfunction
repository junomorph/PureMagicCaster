#function ./main

playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.2 0
playsound block.beacon.activate player @a ~ ~ ~ 1 1.1 0
playsound block.beacon.activate player @a ~ ~ ~ 1 1.1 0
playsound block.glass.break player @a ~ ~ ~ 1 2 0
playsound entity.generic.explode player @a ~ ~ ~ 0.6 1.7 0
playsound entity.warden.sonic_boom player @a ~ ~ ~ 0.6 1.7 0
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5 0
summon marker ~ ~ ~ {Tags:["jmp_pmc.beam"]}
scoreboard players add #id_operator jmp_pmc.link_id 1
scoreboard players operation @n[tag=jmp_pmc.beam,type=marker] jmp_pmc.link_id = #id_operator jmp_pmc.link_id
scoreboard players operation @s jmp_pmc.link_id = #id_operator jmp_pmc.link_id
execute as @n[tag=jmp_pmc.beam,type=marker] run rotate @s ~ ~
tag @s add jmp_pmc.beam_inited