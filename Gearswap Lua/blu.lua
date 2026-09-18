
meleemode = true
macc = false
thmode = false
--mbmode = false


function get_sets()
    -- Initialize your gear sets (leave empty if only using macros)
    
    
	--Fast Cast
	sets.fc = {
    ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Hashishin Mintan +3",
    hands={ name="Leyline Gloves", augments={'Accuracy+7','Mag. Acc.+5',}},
    legs="Prestige Brais",
    feet={ name="Herculean Boots", augments={'"Fast Cast"+5',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
	}
	
	--Weapons
	sets.sword = {
    main="Caliburnus",
    sub="Thibron",
	}
	--main="Naegling",
	
	sets.club = {
    main="Bunzi's Rod",
	sub="Archduke's Sword",
    --sub="Maxentius",
	}
	--sub="Archduke's Sword",
	
	
	
	sets.melee = {
    --main="Naegling",
    --sub="Thibron",
	ammo="Coiste Bodhar",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Malignance Gloves",
    legs="Hashishin Tayt +3",
    feet="Malignance Boots",
	--neck="Mirage Stole +2",
	neck={ name="Mirage Stole +2", augments={'Path: A',}},
    --neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Suppanomimi",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Lehko's Ring",
    right_ring="Ilabrat Ring",
    back="Null Shawl",
	}
	
	--Movement Idle Set
	sets.idle = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Elite Royal Collar",
    waist="Plat. Mog. Belt",
    left_ear="Infused Earring",
    right_ear="Alabaster Earring",
    left_ring="Paguroidea Ring",
    right_ring="Karieyh Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	}
	
	sets.casting = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet="Hashi. Basmak +3",
    --neck="Sibyl Scarf",
	neck={ name="Mirage Stole +2", augments={'Path: A',}},
	--neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Acumen Ring",
	--left_ring="Stikini Ring",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	--back="Aurist's Cape +1",
	}
	
	sets.casting.macc = set_combine(sets.casting, {neck={ name="Mirage Stole +2", augments={'Path: A',}},left_ring="Stikini Ring",left_ear="Gwati Earring",back="Aurist's Cape +1",})
	
	
	
	--Casting Treasure Hunter
	sets.casting.th = set_combine(sets.casting, {head=empty,body="Crepuscular Cloak",
	ammo="Per. Lucky Egg",
	legs={ name="Herculean Trousers", augments={'Pet: INT+3','Accuracy+4','"Treasure Hunter"+1','Accuracy+15 Attack+15',}},
    feet={ name="Herculean Boots", augments={'INT+6','"Mag.Atk.Bns."+2','"Treasure Hunter"+1','Accuracy+18 Attack+18',}},})
	
	
	
	sets.casting.th = set_combine(sets.casting, 
    {ammo="Per. Lucky Egg",
    hands={ name="Herculean Gloves", augments={'"Waltz" potency +6%','VIT+5','"Treasure Hunter"+1','Accuracy+13 Attack+13',}},
    legs={ name="Herculean Trousers", augments={'Pet: INT+3','Accuracy+4','"Treasure Hunter"+1','Accuracy+15 Attack+15',}},
    feet={ name="Herculean Boots", augments={'INT+6','"Mag.Atk.Bns."+2','"Treasure Hunter"+1','Accuracy+18 Attack+18',}},
	})
	
	sets.casting.fruit = set_combine(sets.casting, 
    {
    neck="Phalaina Locket",
    left_ear="Mendi. Earring",
    --left_ring="Stikini Ring",
    left_ring="Stikini Ring",
    right_ring="Menelaus's Ring",
	})
	
	-- --Casting Treasure Hunter
	-- sets.exported = {
    -- main="Bunzi's Rod",
    -- sub="Archduke's Sword",
    -- ammo="Per. Lucky Egg",
    -- head="Hashishin Kavuk +3",
    -- body="Hashishin Mintan +3",
    -- hands={ name="Herculean Gloves", augments={'Mag. Acc.+18','Weapon skill damage +4%','MND+10','"Mag.Atk.Bns."+8',}},
    -- legs={ name="Herculean Trousers", augments={'Pet: INT+3','Accuracy+4','"Treasure Hunter"+1','Accuracy+15 Attack+15',}},
    -- feet={ name="Herculean Boots", augments={'INT+6','"Mag.Atk.Bns."+2','"Treasure Hunter"+1','Accuracy+18 Attack+18',}},
    -- neck={ name="Mirage Stole +1", augments={'Path: A',}},
    -- waist="Acuity Belt +1",
    -- left_ear="Friomisi Earring",
    -- right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    -- left_ring="Acumen Ring",
    -- right_ring="Metamor. Ring +1",
    -- back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	-- }
	
	
	
	
	
	-- Weapon Skill Sets
	sets.WS = {}
	
	
	sets.WS['Imperator'] = {
    --main="Caliburnus",
    --sub="Thibron",
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Kentarch Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Odr Earring",
	right_ear="Hoxne Earring",
    left_ring="Ilabrat Ring",
    right_ring="Karieyh Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
}
	
	sets.WS['Savage Blade'] = {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Nyame Gauntlets",
    legs="Luhlaza Shalwar +3",
    feet="Nyame Sollerets",
    --neck="Rep. Plat. Medal",
	neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Moonshade Earring",
    left_ring="Karieyh Ring +1",
    right_ring="Sroda Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	--Savage Blade Unbuffed
	sets.WS.savageunbuffed = {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    --neck="Rep. Plat. Medal",
	neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Moonshade Earring",
    left_ring="Karieyh Ring +1",
    right_ring="Sroda Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.WS['Expiation'] = {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    --neck="Rep. Plat. Medal",
	neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Moonshade Earring",
    left_ring="Karieyh Ring +1",
    right_ring="Beithir Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.WS['Requiscat'] = {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
    left_ring="Karieyh Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	
	
	--send_command('input /macro book 40; wait 1; input /macro set 1')
	select_default_macro_book()
	--windower.add_to_chat(123,"'MY Job Stats'" .. tostring(player.main_job) .. "---" .. tostring(player.sub_job) )
	 
	-- if player.sub_job == "DNC" or player.sub_job == "NIN" then  
		-- --windower.add_to_chat(123,'Dnc Or Nin' .. player.sub_job) 
		-- set_lockstyle()
	-- else
		-- --windower.add_to_chat(123,'Default Staff' .. player.sub_job) 
		-- --set_lockstylestaff()
	-- end
	
	
	--set_lockstyle()
end

function precast(spell)
	--windower.add_to_chat(123,"'Precastttttt '")
	--windower.add_to_chat(123,'Precastttttt ' .. tostring(spell.name)  ..   tostring(spell.type)           )
    if spell.cast_time then
		
		if spell.type == 'Item' then
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
	end
end

function midcast(spell)
	--windower.add_to_chat(207,'MIDCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
	if spell.cast_time then 
		if spell.type == "Item" then
			--windower.add_to_chat(123,"'RINGITEMTHINGY '")
		elseif spell.name == "Magic Fruit" then
			equip(sets.casting.fruit)
		elseif macc then
			macc = false
			equip(sets.casting.macc)
		elseif thmode then
			thmode = false
			equip(sets.casting.th)
		else
			equip(sets.casting)
		end
    end
end

function aftercast(spell)
	-- if not spell.cast_time then
		-- if spell.name == "Perpetuance" then
		-- --windower.add_to_chat(123,"'Its Perpetuance'")
		-- perpetuance = true
		-- end
	-- else
		-- local istracked = false
	
		-- if spell.name:endswith("helix") or spell.name:endswith("III") or spell.name == "Cure IV" then
			-- --windower.add_to_chat(123,"'Its Endswith this'")
			-- istracked = true
		-- end
		
		-- if istracked and not loopactive then
		-- loopactive = true
		-- coroutine.schedule(monitor_spells, 0.2)
		-- end
	-- end

--windower.add_to_chat(123,"'After Castttttt'")
--windower.add_to_chat(121,"'Bright Blue'")
--windower.add_to_chat(122,"'Green'")
--windower.add_to_chat(141,"'Yellow'")
--windower.add_to_chat(167,"'Bright Red'")
	choose_gear()
end

function sub_job_change(new, old)
	--windower.add_to_chat(123,"'Change MY Job Stats'" .. tostring(new) .. "---" .. tostring(new) )
	-- if new == "NIN" or new == "DNC" then
	-- --windower.add_to_chat(123,'Clubstyle' )
		-- set_lockstyle()
    -- else
	-- --windower.add_to_chat(123,'Staffstyle' )
		-- set_lockstylestaff()
    -- end
	set_lockstyle()
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
	if command == 'sword' then 
		--windower.add_to_chat(123,"'Set Melee Mode'")
		equip(sets.sword)
		meleemode = true
	-- elseif command == 'mbmode' then 
		-- --windower.add_to_chat(123,"'Activate Magic Burst Mode'")
		-- mbmode = true
	elseif command == 'macc' then
	macc = true
	elseif command == 'thmode' then
	thmode = true
	elseif command == 'magic' then
		--windower.add_to_chat(123,"'Set Magic Mode'")
		--equip(sets.bunzi)
		meleemode = false
		equip(sets.club)
		--mbmode = false
	-- elseif command == 'staff' then 
		-- staff = true
	-- elseif command == 'clubs' then
		-- staff = false
	end
end

function select_default_macro_book()
--windower.add_to_chat(123,"'Set Macro Book'")
    --set_macro_page(1, 24)
	send_command('input /macro book 38; wait 1; input /macro set 1')
end

function set_lockstyle()
	--windower.add_to_chat(123,"'Set The ClubybybybyLockstyle'")
    --send_command('wait 2; input /lockstyleset; ' .. lockstyleset)
	
	send_command('setkey escape down; wait 0.05; setkey escape up; wait 0.05; setkey escape down; wait 0.05; setkey escape up;')
	--input /cancel; input /cancel;
	send_command('wait 2; input /equipset 84; wait 1; input /lockstyle on;wait 1;input /equipset 91;input /console gs c sword;')
	
end

-- function set_lockstylestaff()
	-- --windower.add_to_chat(123,"'Set The STTTTTTAAAFFLockstyle'")
    -- --send_command('wait 2; input /lockstyleset; ' .. lockstyleset)
	-- send_command('setkey escape down; wait 0.05; setkey escape up; wait 0.05; setkey escape down; wait 0.05; setkey escape up;')
	
	-- send_command('wait 2; input /console gs c staff;input /equipset 83; wait 1;input /lockstyle on; wait 1;input /equipset 13; wait 2;input  /equipset 128;')
	
-- end



-- --function jobwindow()
	-- local jobUI = texts.new({
	-- pos = {x = 300, y = 90},
	-- bg = { alpha = 0, red = 0, green = 0, blue = 0},
	-- text = {font = 'Consola', size = 11, color = {red = 255, green = 255, blue = 255}},
	-- padding = 1,
	-- flags = {draggable = true}
	-- })
	
	-- local spells = {
	-- [146] = 'Fire III',
	-- [151] = 'Blizzard III',
	-- [156] = 'Aero III',
	-- [161] = 'Stone III',
	-- [166] = 'Thunder III',
	-- [171] = 'Water III',
	-- [3] = 'Cure III',
	-- [4] = 'Cure IV',
	
	
	-- [278] = 'Geohelix',
	-- [279] = 'Hydrohelix',
	-- [280] = 'Anemohelix',
	-- [281] = 'Pyrohelix',
	-- [282] = 'Cryohelix',
	-- [283] = 'Ionohelix',
	-- [284] = 'Noctohelix',
	-- [285] = 'Luminohelix',
	-- }
	
-- --end

-- function monitor_spells()

-- --windower.add_to_chat(123,"'JobUI Timer Tick'")

	-- if not windower.ffxi.get_info().logged_in then
		-- --windower.add_to_chat(123,"'I must not be logged in'")
		-- jobUI:hide()
		-- loopactive = false
		-- return
	-- end
	-- --windower.add_to_chat(123,"'I must be logged in'")
	-- local recasts = windower.ffxi.get_spell_recasts()
	-- --local display_text = "==Helix Status ==\n"
	-- local display_text = "\n"
	-- --local processing_helix = false  --Shows All spells
	-- local spells_oncooldown = 0
	
	-- for id, name in pairs(spells) do
		-- --processing_helix = true
		-- local current_cooldown = recasts[id] or 0
		
		-- if current_cooldown > 0 then
			-- spells_oncooldown = spells_oncooldown + 1
			-- display_text = display_text .. string.format("%-12s:  \\cs(255,100,100)%4.1fs\\cr\n",name, (current_cooldown / 60))
	    -- end
	-- end
	
	-- if spells_oncooldown > 0 then
		-- jobUI:text(display_text)
		-- jobUI:show()
		-- coroutine.schedule(monitor_spells, 0.1)
	-- else
		-- jobUI:hide()
		-- loopactive = false
	-- end
		
	
	
	
	-- -- Shows All Spells
	-- -- for id, name in pairs(spells) do
		-- -- processing_helix = true
		-- -- local current_cooldown = recasts[id] or 0
	
		-- -- if current_cooldown > 0 then
			-- -- display_text = display_text .. string.format("%-12s:  \\cs(255,100,100)%4.1fs\\cr\n",name, (current_cooldown / 60))
		-- -- else 
			-- -- display_text = display_text .. string.format("%-12s:  \\cs(100,255,100)Ready\\cr\n" , name)
		-- -- end
	-- -- end
	
	-- -- if processing_helix then
		-- -- jobUI:text(display_text)
		-- -- jobUI:show()
	-- -- else
		-- -- jobUI:hide()
	-- -- end
	
	-- -- coroutine.schedule(monitor_spells, 1)

-- end

-- function file_unload()
	-- --windower.add_to_chat(123,"'File Unlooooooooooaaaoood'")
	-- if jobUI then
		-- jobUI:destroy()
	-- end
-- end

-- --jobwindow()
-- --monitor_spells()





-- -- 2. This runs automatically when you change status (Engaged, Idle, Resting)
-- function status_change(new, old)
    -- choose_gear()
-- end

-- -- 3. This logic determines which gear set to equip
-- function choose_gear()
    -- if player.status == 'Engaged' then
        -- equip(sets.engaged)
    -- else
        -- equip(sets.idle)
    -- end
-- end

-- -- This built-in event runs automatically as soon as the file loads
-- function maps_mapping_or_load()
    -- -- Direct in-game text command to change macros safely
    -- -- Format: /macro book [number]; wait 1; /macro set [number]
    -- -- Example below: Changes to Macro Book 5, then opens Macro Page 1
    -- send_command('input /macro book 12; wait 1; input /macro set 1')
-- end

-- -- Run the command immediately upon switching to this job
-- maps_mapping_or_load()