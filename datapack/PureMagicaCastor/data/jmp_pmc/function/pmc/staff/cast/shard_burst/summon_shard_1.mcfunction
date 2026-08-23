#function ./main

data modify storage jmp_pmc spead set value {"x": 0.0d,"y": 0.0d}
execute store result storage jmp_pmc:spread x double 0.001 run random value -3000..3000
execute store result storage jmp_pmc:spread y double 0.001 run random value -3000..3000
function jmp_pmc:pmc/staff/cast/shard_burst/summon_shard_2 with storage jmp_pmc:spread