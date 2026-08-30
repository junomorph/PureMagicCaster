#advancement jmp_pmc:staff/using
advancement revoke @s only jmp_pmc:staff/using
execute if entity @s[scores={jmp_pmc.using=9}] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if entity @s[scores={jmp_pmc.using=19}] run playsound block.beacon.power_select player @a ~ ~ ~ 1 1.3 0
execute if entity @s[scores={jmp_pmc.using=19}] run playsound block.beacon.power_select player @a ~ ~ ~ 1 1.3 0

scoreboard players set @s jmp_pmc.is_using 2
execute unless score @s jmp_pmc.using matches -2147483648..2147483647 run scoreboard players set @s jmp_pmc.using 0
execute if entity @s[scores={jmp_pmc.using=..20}] run scoreboard players add @s jmp_pmc.using 1
execute if entity @s[scores={jmp_pmc.using=21..,jmp_pmc.magica=3..}] anchored eyes positioned ^ ^ ^1 run function jmp_pmc:pmc/staff/cast/beam/main