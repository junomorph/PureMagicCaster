#function pmc:tick

title @a actionbar [{"text":"magica: ","color":"blue"},{"score":{"name":"@s","objective":"jmp_pmc.magica"},"color":blue},{"text":"/200","color":blue}]
execute if entity @s[predicate=jmp_pmc:hold_pmc_staff] run return run function jmp_pmc:pmc/staff/main