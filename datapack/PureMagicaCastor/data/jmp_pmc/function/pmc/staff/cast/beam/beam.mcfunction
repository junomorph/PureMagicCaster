#function ./main

particle sonic_boom
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!#jmp_pmc:not_mob,tag=!jmp_pmc.barriered,tag=!jmp_pmc.beam_hit] run function jmp_pmc:pmc/staff/cast/beam/hit
execute if entity @s[distance=..30] if block ~ ~ ~ #jmp_pmc:no_collision positioned ^ ^ ^1 run function jmp_pmc:pmc/staff/cast/beam/beam