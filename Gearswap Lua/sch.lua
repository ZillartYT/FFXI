
--Subscribe to Zillart On Youtube!

meleemode = false
mbmode = false
perpetuance = false
staff = false

--player = windower.ffxi.get_player()
-- index = player.target_index
-- target = windower.ffxi.get_mob_by_index(index)
-- target_name = target.name
--local main_job = player.main_job
    --local sub_job = player.sub_job


function get_sets()
    sets.idle = {
    ammo="Homiliary",
    head="Null Masque",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Crier's Gaiters",
    neck="Sanctity Necklace",
    waist="Null Belt",
    left_ear="Infused Earring",
    right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    left_ring="Paguroidea Ring",
    right_ring="Karieyh Ring +1",
    back="Null Shawl",
	}
	
	sets.melee = {
	main="Maxentius",
    sub="Daybreak",
    ammo="Amar Cluster",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck="Null Loop",
    waist="Patentia Sash",
    --left_ear="Suppanomimi",
	left_ear="Hoxne Earring",
    right_ear="Crep. Earring",
    left_ring="Lehko's Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	
	sets.casting = {
	--main="Bunzi's Rod",
    --sub="Daybreak",
    ammo="Ghastly Tathlum +1",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Hachirin-no-Obi",
    left_ear="Malignance Earring",
	--left_ear="Hoxne Earring",
    right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    left_ring="Metamor. Ring +1",
    --right_ring="Acumen Ring",
	right_ring="Stikini Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
	}
	
	sets.casting.curenuke = set_combine(sets.casting, {back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},})
	sets.casting.mb = set_combine(sets.casting, {main="Bunzi's Rod", sub="Daybreak",right_ring="Mujin Band"})
	sets.casting.staffmb = set_combine(sets.casting, {main="Mpaca's Staff", sub="Enki Strap",right_ring="Mujin Band"})
	sets.casting.impact = set_combine(sets.casting, {head=empty,body="Crepuscular Cloak"})
	
	sets.helix = {
    --main="Bunzi's Rod",
    --sub="Daybreak",
    ammo="Ghastly Tathlum +1",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
	--left_ear="Hoxne Earring",
    right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    left_ring="Metamor. Ring +1",
    right_ring="Mallquis Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
}
	
	sets.fc = {
    --main="Bunzi's Rod",
    --sub="Daybreak",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Fast Cast"+7',}},
    body="Agwu's Robe",
    hands="Acad. Bracers +3",
    legs="Agwu's Slops",
    feet="Regal Pumps +1",
    neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
	}
	
	sets.fc.impact = set_combine(sets.fc, {head=empty,body="Crepuscular Cloak"})
	sets.fc.cure = set_combine(sets.fc, {right_ear="Mendi. Earring"})
	
	sets.regen = {
    ammo="Sapience Orb",
    head="Arbatel Bonnet +3",
    body="Peda. Gown +3",
    hands="Arbatel Bracers +3",
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
    feet={ name="Telchine Pigaches", augments={'Haste+1','Enh. Mag. eff. dur. +9',}},
    neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}
	
	sets.storm = set_combine(sets.regen, {hands={ name="Telchine Gloves", augments={'Enemy crit. hit rate -4','Enh. Mag. eff. dur. +9',}}})
	
	sets.sublimation = {
	body="Peda. Gown +3",
	waist="Embla Sash",
    left_ear="Savant's Earring",
	}
	
	sets.stoneskin = set_combine(sets.casting,{
    neck="Nodens Gorget",
    waist="Siegel Sash",
    right_ear="Earthcry Earring",
	})
	
	sets.bunzi = {
	main="Bunzi's Rod",
    sub="Daybreak",}
	
	sets.WS = {}
    -- sets.WS['Shining Strike'] = {
	-- --main="Maxentius",
    -- --sub="Daybreak",
    -- ammo="Oshasha's Treatise",
    -- head="Arbatel Bonnet +3",
    -- body="Arbatel Gown +3",
    -- hands="Arbatel Bracers +3",
    -- legs="Arbatel Pants +3",
    -- feet="Arbatel Loafers +3",
    -- neck="Fotia Gorget",
    -- waist="Orpheus's Sash",
    -- left_ear="Moonshade Earring",
    -- right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    -- left_ring="Karieyh Ring +1",
    -- right_ring="Metamor. Ring +1",
    -- back={ name="Lugh's Cape", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
	-- }
	
	sets.WS['Shining Strike'] = {
    --main="Maxentius",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Moonshade Earring",
    right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    left_ring="Karieyh Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Lugh's Cape", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
}
	
    sets.WS['Black Halo'] = {
	main="Maxentius",
    sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Jhakri Cuffs +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
	--right_ear="Brutal Earring",
    right_ear="Hoxne Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Karieyh Ring +1",
    back={ name="Lugh's Cape", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
	}
    
	sets.WS['Starlight'] = {
	--main="Maxentius",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Moonshade Earring",
    right_ear={ name="Arbatel Earring +2", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+17','Enmity-7','INT+9 MND+9',}},
    left_ring="Karieyh Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Lugh's Cape", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
	}
	
	--send_command('input /macro book 40; wait 1; input /macro set 1')
	select_default_macro_book()
	--windower.add_to_chat(123,"'MY Job Stats'" .. tostring(player.main_job) .. "---" .. tostring(player.sub_job) )
	 
	if player.sub_job == "DNC" or player.sub_job == "NIN" then  
		--windower.add_to_chat(123,'Dnc Or Nin' .. player.sub_job) 
		set_lockstyle()
	else
		--windower.add_to_chat(123,'Default Staff' .. player.sub_job) 
		--set_lockstylestaff()
	end
end

function precast(spell)
	--windower.add_to_chat(123,"'Precastttttt '")
	--windower.add_to_chat(123,'Precastttttt ' .. tostring(spell.name)  ..   tostring(spell.type)           )
    if spell.cast_time then
		if spell.name == 'Impact' then
			--windower.add_to_chat(123,"'Impacttttttttttt '")
			equip(sets.fc.impact)
		elseif spell.name == 'Cure IV' then
			equip(sets.fc.cure)
		elseif spell.type == 'Item' then
			--windower.add_to_chat(123,"'RINGITEMTHINGY '")
		elseif spell.name == "Reraise III" then
			--windower.add_to_chat(123,"'Reraise#$#$#$# '")
			equip(sets.fc)
		else
			--windower.add_to_chat(123,"'NOTNOTNOTNOPTImpacttttttttttt '")
			equip(sets.fc)
		end
	elseif sets.WS[spell.english] then
		--windower.add_to_chat(123,"'EQUIP A WS SETTTTTTTTTTTTTTTTT '")
        equip(sets.WS[spell.english]) 
	elseif spell.name == "Sublimation" then
		--windower.add_to_chat(123,"'Sublimbimibimartion#$#$#$# '")
		equip(sets.sublimation)	
	end
end

function midcast(spell)
	--windower.add_to_chat(207,'MIDCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
	if spell.cast_time then 
		if spell.name == 'Impact' then
			--windower.add_to_chat(123,"'Impacttttttttttt '")
			equip(sets.casting.impact)
		elseif spell.type == "Item" then
			--windower.add_to_chat(123,"'RINGITEMTHINGY '")
		elseif spell.name == "Stoneskin" then
			equip(sets.stoneskin)
		elseif spell.name == 'Regen V' then
			--windower.add_to_chat(123,"'Regennnnnnnnnnnnnnnnnnnnnnnnn '")
			equip(sets.regen)
		elseif spell.name:contains("helix") then
            --windower.add_to_chat(123,"'We got HelixxxxxxxxxxxContained '")
		equip(sets.helix)
		elseif spell.name:contains("storm") or spell.name == 'Embrava 'then
          --  windower.add_to_chat(123,"'We got StormContained '")
			if perpetuance then
			--windower.add_to_chat(123,"'We got Perpetuance Up '")
			perpetuance = false
			equip(sets.regen) -- Uses Regen Set For Now
			else
			equip(sets.storm)
			end
		elseif mbmode then
			if staff then
			--windower.add_to_chat(207,'MagicBurstStaffMOooOOOODE' .. tostring(spell.name)  .. tostring(spell.type))
			mbmode=false
			equip(sets.casting.staffmb)
			else
			--windower.add_to_chat(207,'MagicBurstClubMOooOOOODE' .. tostring(spell.name)  .. tostring(spell.type))
			mbmode=false
			equip(sets.casting.mb)
			end
		elseif spell.name:contains("Cure") then
		    --windower.add_to_chat(207,'Its a CuuuUUURERER' .. tostring(spell.name)  .. tostring(spell.type))
			equip(sets.casting.curenuke)		
		else
		--windower.add_to_chat(207,'Has Cast Time' .. tostring(spell.cast_time)  .. tostring(spell.type)     )
		equip(sets.casting)
		end
    else
    end
end

function aftercast(spell)
	if not spell.cast_time then
		if spell.name == "Perpetuance" then
		--windower.add_to_chat(123,"'Its Perpetuance'")
		perpetuance = true
		end
	else
		local istracked = false
	
		if spell.name:endswith("helix") or spell.name:endswith("III") or spell.name == "Cure IV" then
			--windower.add_to_chat(123,"'Its Endswith this'")
			istracked = true
		end
		
		if istracked and not loopactive then
		loopactive = true
		coroutine.schedule(monitor_spells, 0.2)
		end
	end

--windower.add_to_chat(123,"'After Castttttt'")
--windower.add_to_chat(121,"'Bright Blue'")
--windower.add_to_chat(122,"'Green'")
--windower.add_to_chat(141,"'Yellow'")
--windower.add_to_chat(167,"'Bright Red'")
	choose_gear()
end

function sub_job_change(new, old)
	--windower.add_to_chat(123,"'Change MY Job Stats'" .. tostring(new) .. "---" .. tostring(new) )
	if new == "NIN" or new == "DNC" then
	--windower.add_to_chat(123,'Clubstyle' )
		set_lockstyle()
    else
	--windower.add_to_chat(123,'Staffstyle' )
		set_lockstylestaff()
    end
end

-- 2. This runs automatically when you change status (Engaged, Idle, Resting)
function status_change(new, old)
	--windower.add_to_chat(123,"'Change MY Job Stats'" .. tostring(new) .. "---" .. tostring(new) )
    choose_gear()
end

-- 3. This logic determines which gear set to equip
function choose_gear()
	--windower.add_to_chat(123,"'Choose Gear'")
	if player.status=='Engaged' then
		--windower.add_to_chat(123,"'Im Engaged'")
		if meleemode == true then
		--windower.add_to_chat(123,"'Im Melee Mode'")
			equip(sets.melee)
		else
		--windower.add_to_chat(123,"'Im Magic Mode'")
			equip(sets.casting)
		end
	elseif player.in_combat then 
	    --windower.add_to_chat(123,"'Im StIIIIIL in Combat'")
	    if meleemode == true then
		--windower.add_to_chat(123,"'Im Melee Mode'")
			equip(sets.melee)
		else
		--windower.add_to_chat(123,"'Im Magic Mode'")
			equip(sets.casting)
		end
	else
		--windower.add_to_chat(123,"'Im NotEngaged'")
		equip(sets.idle)
	end
end

-- //gs c From In game to send command
function self_command(command) 
		--windower.add_to_chat(123,'Self Commandddd' .. command)
	if command == 'melee' then 
		--windower.add_to_chat(123,"'Set Melee Mode'")
		equip(sets.melee)
		meleemode = true
	elseif command == 'mbmode' then 
		--windower.add_to_chat(123,"'Activate Magic Burst Mode'")
		mbmode = true
	elseif command == 'magic' then
		--windower.add_to_chat(123,"'Set Magic Mode'")
		equip(sets.bunzi)
		meleemode = false
		mbmode = false
	elseif command == 'staff' then 
		staff = true
	elseif command == 'clubs' then
		staff = false
	end
end

function select_default_macro_book()
--windower.add_to_chat(123,"'Set Macro Book'")
    --set_macro_page(1, 24)
	send_command('input /macro book 40; wait 1; input /macro set 1')
end

function set_lockstyle()
	--windower.add_to_chat(123,"'Set The ClubybybybyLockstyle'")
    --send_command('wait 2; input /lockstyleset; ' .. lockstyleset)
	
	send_command('setkey escape down; wait 0.05; setkey escape up; wait 0.05; setkey escape down; wait 0.05; setkey escape up;')
	--input /cancel; input /cancel;
	send_command('wait 2; input /console gs c clubs;input /equipset 134; wait 1; input /lockstyle on;wait 1;input /equipset 124;wait 2;input  /equipset 128;')
	
end

function set_lockstylestaff()
	--windower.add_to_chat(123,"'Set The STTTTTTAAAFFLockstyle'")
    --send_command('wait 2; input /lockstyleset; ' .. lockstyleset)
	send_command('setkey escape down; wait 0.05; setkey escape up; wait 0.05; setkey escape down; wait 0.05; setkey escape up;')
	
	send_command('wait 2; input /console gs c staff;input /equipset 83; wait 1;input /lockstyle on; wait 1;input /equipset 13; wait 2;input  /equipset 128;')
	
end



--function jobwindow()
	local jobUI = texts.new({
	pos = {x = 300, y = 90},
	bg = { alpha = 0, red = 0, green = 0, blue = 0},
	text = {font = 'Consola', size = 11, color = {red = 255, green = 255, blue = 255}},
	padding = 1,
	flags = {draggable = true}
	})
	
	local spells = {
	[146] = 'Fire III',
	[151] = 'Blizzard III',
	[156] = 'Aero III',
	[161] = 'Stone III',
	[166] = 'Thunder III',
	[171] = 'Water III',
	[3] = 'Cure III',
	[4] = 'Cure IV',
	
	
	[278] = 'Geohelix',
	[279] = 'Hydrohelix',
	[280] = 'Anemohelix',
	[281] = 'Pyrohelix',
	[282] = 'Cryohelix',
	[283] = 'Ionohelix',
	[284] = 'Noctohelix',
	[285] = 'Luminohelix',
	}
	
--end

function monitor_spells()

--windower.add_to_chat(123,"'JobUI Timer Tick'")

	if not windower.ffxi.get_info().logged_in then
		--windower.add_to_chat(123,"'I must not be logged in'")
		jobUI:hide()
		loopactive = false
		return
	end
	--windower.add_to_chat(123,"'I must be logged in'")
	local recasts = windower.ffxi.get_spell_recasts()
	--local display_text = "==Helix Status ==\n"
	local display_text = "\n"
	--local processing_helix = false  --Shows All spells
	local spells_oncooldown = 0
	
	for id, name in pairs(spells) do
		--processing_helix = true
		local current_cooldown = recasts[id] or 0
		
		if current_cooldown > 0 then
			spells_oncooldown = spells_oncooldown + 1
			display_text = display_text .. string.format("%-12s:  \\cs(255,100,100)%4.1fs\\cr\n",name, (current_cooldown / 60))
	    end
	end
	
	if spells_oncooldown > 0 then
		jobUI:text(display_text)
		jobUI:show()
		coroutine.schedule(monitor_spells, 0.1)
	else
		jobUI:hide()
		loopactive = false
	end
		
	
	
	
	-- Shows All Spells
	-- for id, name in pairs(spells) do
		-- processing_helix = true
		-- local current_cooldown = recasts[id] or 0
	
		-- if current_cooldown > 0 then
			-- display_text = display_text .. string.format("%-12s:  \\cs(255,100,100)%4.1fs\\cr\n",name, (current_cooldown / 60))
		-- else 
			-- display_text = display_text .. string.format("%-12s:  \\cs(100,255,100)Ready\\cr\n" , name)
		-- end
	-- end
	
	-- if processing_helix then
		-- jobUI:text(display_text)
		-- jobUI:show()
	-- else
		-- jobUI:hide()
	-- end
	
	-- coroutine.schedule(monitor_spells, 1)

end

function file_unload()
	--windower.add_to_chat(123,"'File Unlooooooooooaaaoood'")
	if jobUI then
		jobUI:destroy()
	end
end

--jobwindow()
--monitor_spells()
