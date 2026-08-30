#function ../main

tag @s add jmp_pmc.barriered
scoreboard players remove @s jmp_pmc.magica 3
scoreboard players set @s jmp_pmc.magica_refuel_delay 60
execute if entity @s[tag=!jmp_pmc.beam_inited] run function jmp_pmc:pmc/staff/cast/beam/init
particle minecraft:glow ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..5]
particle minecraft:dust_color_transition{from_color:[0.392,0.294,0.588],scale:1,to_color:[0.600,1.000,1.000]} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..5]
playsound entity.warden.sonic_charge player @a ~ ~ ~ 0.2 1.5 0
execute at @e[tag=jmp_pmc.beam,type=marker] if score @n jmp_pmc.link_id = @s jmp_pmc.link_id run function jmp_pmc:pmc/staff/cast/beam/beam
