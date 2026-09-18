

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Direct in-game text command to change macros safely
    -- Format: /macro book [number]; wait 1; /macro set [number]
    -- Example below: Changes to Macro Book 5, then opens Macro Page 1
	--set_macro_page(1, 24)
    send_command('input /macro book 24; wait 1; input /macro set 1')
end

function get_sets()
    -- Initialize your gear sets (leave empty if only using macros)
    sets.idle = {}
    sets.engaged = {}
	
	sets.precast = {}
    sets.midcast = {}
    
	sets.movement = {
    head="Null Masque",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Crier's Gaiters",
    neck="Sanctity Necklace",
    waist="Null Belt",
    left_ear="Infused Earring",
    right_ear="Alabaster Earring",
    left_ring="Paguroidea Ring",
    right_ring="Karieyh Ring +1",
    back="Null Shawl",
	}
	
	sets.melee = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Brutal Earring",
    right_ear="Crep. Earring",
    left_ring="Lehko's Ring",
    right_ring="Petrov Ring",
    back="Null Shawl",
	}
	
	sets.ws = {}
	--sets.ws['Judgment'] = {
	sets.ws.Judgment = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Crep. Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Karieyh Ring +1",
    back="Alabaster Mantle",
	}
	
	sets.ws['Hexa Strike'] = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Crep. Earring",
    left_ring="Lehko's Ring",
    right_ring="Karieyh Ring +1",
    back="Alabaster Mantle",
}
	
	sets.ws['Flash Nova'] = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Friomisi Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Karieyh Ring +1",
    back="Alabaster Mantle",
	}
	
	sets.ws['Seraph Strike'] = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Friomisi Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Karieyh Ring +1",
    back="Alabaster Mantle",
	}
	
	sets.fc = {
    --main="C. Palug Hammer",
    --sub="Daybreak",
    ammo="Sapience Orb",
    head="Bunzi's Hat",
    body="Inyanga Jubbah +2",
    hands="Bunzi's Gloves",
    legs="Lengo Pants",
    feet="Regal Pumps +1",
    neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back="Fi Follet Cape +1",
	}
	
	sets.stoneskin = set_combine(sets.melee,{
    neck="Nodens Gorget",
    waist="Siegel Sash",
    right_ear="Earthcry Earring",
	})
	
    -- Change macro set on job change (Book, Page)
    --set_macro_page(1, 24)
	select_default_macro_book()
end

function precast(spell)
	--windower.add_to_chat(207,'PreCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
    if spell.cast_time then
		if spell.type == 'Item' then
		else
        equip(sets.fc)
		end
    end
	-- elseif sets.ja[spell.english] then
		-- --windower.add_to_chat(123,"'EQUIP A JobAbility Auto SETTTTTTTTTTTTTTTTT '")
        -- equip(sets.ja[spell.english])
	-- --end	
	if spell.type == "WeaponSkill" then
		if sets.ws[spell.english] then
			--windower.add_to_chat(123,"'EQUIP A WS SETTTTTTTTTTTTTTTTT '")
			equip(sets.ws[spell.english])
		else
			equip(sets.ws['Judgment'])
		end
	end		
end

function midcast(spell)
	--windower.add_to_chat(207,'MIDCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
	if spell.cast_time then
		if spell.type == "Item" then
		elseif spell.name == "Stoneskin" then
			equip(sets.stoneskin)
		else
		equip (sets.melee) -- Just  Have a Default Set for now
		end
	end
	
    -- if sets.JA[spell.english] then
        -- equip(sets.JA[spell.english])
    -- elseif sets.WS[spell.english] then
        -- equip(sets.WS[spell.english])
        -- if sets.WS[spell.english].Gavialis and sets.WS[spell.english].Gavialis[world.day] then
            -- equip(sets.WS.Gavialis)
        -- end
    -- end
end

function aftercast(spell)
	--windower.add_to_chat(207,'AfterCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
    choose_gear()
end

-- 2. This runs automatically when you change status (Engaged, Idle, Resting)
function status_change(new, old)
    choose_gear()
end

-- 3. This logic determines which gear set to equip
function choose_gear()
    if player.status == 'Engaged' then
        equip(sets.melee)
	elseif player.in_combat then
		equip(sets.melee)	
    else
        equip(sets.movement)
    end
end

