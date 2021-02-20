if not tweak_data then
    return 
end

for id,_job in pairs(tweak_data.narrative.jobs) do _job.briefing_event = "" end
for id,_job in pairs(tweak_data.narrative.jobs) do _job.debrief_event = "" end
for id,_job in pairs(tweak_data.narrative.jobs) do _job.crimenet_callouts = {} end

 local level_id = Global.level_data and Global.level_data.level_id
 local level_tweak = tweak_data.levels[level_id]


for i , levels in pairs( tweak_data.levels._level_index ) do tweak_data.levels[levels].intro_event = "" end
for i , levels in pairs( tweak_data.levels._level_index ) do tweak_data.levels[levels].outro_event = {} end
for i , levels in pairs( tweak_data.levels._level_index ) do tweak_data.levels[levels].briefing_dialog = "" end