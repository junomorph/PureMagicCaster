scoreboard objectives add jmp_pmc.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add jmp_pmc.sneaktime minecraft.custom:minecraft.sneak_time
#scoreboard objectives add jmp_pmc.dropped minecraft.custom:minecraft.drop

#magicaは300スタックまで(5秒で1つ)
scoreboard objectives add jmp_pmc.magica dummy
scoreboard objectives add jmp_pmc.magica_capacity dummy
scoreboard players set #config jmp_pmc.magica_capacity 200
scoreboard objectives add jmp_pmc.magica_refuel_delay dummy
scoreboard objectives add jmp_pmc.spell dummy
scoreboard objectives add jmp_pmc.using dummy
scoreboard objectives add jmp_pmc.is_using dummy

scoreboard objectives add jmp_pmc.shard_burst_summon dummy
scoreboard objectives add jmp_pmc.link_id dummy