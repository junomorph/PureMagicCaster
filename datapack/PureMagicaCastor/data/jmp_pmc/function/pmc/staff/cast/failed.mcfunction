#function ./main
scoreboard players reset @s jmp_pmc.using

playsound block.fire.extinguish player @a ~ ~ ~ 1 1.7 0
playsound block.beacon.deactivate player @a ~ ~ ~ 0.7 1.8 0

particle dust{color:[1,1,1],scale:0.8} ~ ~ ~ ~0.2 ~0.2 ~0.2 0.01 5 normal @a