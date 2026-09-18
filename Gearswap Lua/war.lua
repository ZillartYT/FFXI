

accmode = false
tpmode = 1
-- TPMode 1 = Great Axe
-- TPMode 2 = Club
-- TPMode 3 = Polearm
-- TPMode 4 = Sword

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
windower.add_to_chat(123,"'Set Macro Book'")
    --set_macro_page(1, 24)
	send_command('input /macro book 39; wait 1; input /macro set 1')
end

-- function set_lockstyle()
-- windower.add_to_chat(123,"'Set The Lockstyle'")
    -- send_command('wait 2; input /lockstyleset ' .. lockstyleset)
-- end



function get_sets()
    -- Initialize your gear sets (leave empty if only using macros)
    
	sets.movement = {
    --main="Laphria",
    --sub="Utu Grip",
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Null Belt",
    left_ear="Infused Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Paguroidea Ring",
    right_ring="Karieyh Ring +1",
    back="Null Shawl",
	}
	
	sets.melee = {
    main="Laphria",
    sub="Utu Grip",
    ammo="Coiste Bodhar",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.melee.acc = {
    ammo="Seeth. Bomblet +1",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
}
	
	sets.melee.club = {
    main="Loxotic Mace +1",
    sub="Blurred Shield +1",
    ammo="Coiste Bodhar",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.melee.pole = {
    main="Shining One",
    sub="Utu Grip",
    ammo="Coiste Bodhar",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.melee.sword = {
    main="Naegling",
    sub="Blurred Shield +1",
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.melee.sword.acc = {
    main="Naegling",
    sub="Blurred Shield +1",
    ammo="Amar Cluster",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Supershear Ring",
    back="Null Shawl",
}

	--Job Ability Stuff
	-- sets.JA = {}
    -- sets.JA.Berserk = {body="Pumm. Lorica +1", back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}, feet="Agoge Calligae +1"}
    -- sets.JA.Aggressor = {head="Pumm. Mask +1", body="Agoge Lorica +1"}
    -- sets.JA.Warcry = {head="Agoge Mask +1"}
    -- sets.JA['Blood Rage'] = {body="Boii Lorica +1"}
    -- sets.JA['Mighty Strikes'] = {hands="Agoge Mufflers +1"}
    -- sets.JA.Tomahawk = {ammo="Thr. Tomahawk",feet="Agoge Calligae +1"}
    -- sets.JA.Provoke = sets.Enmity
	
	
	
	sets.ja = {
    -- ammo="Staunch Tathlum +1",
    -- head="Pumm. Mask +4",
    -- body="Pumm. Lorica +4",
    -- hands="Sakpata's Gauntlets",
    -- legs="Sakpata's Cuisses",
    -- feet="Sakpata's Leggings",
    -- neck="Null Loop",
    -- waist="Plat. Mog. Belt",
    -- left_ear="Schere Earring",
    -- right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Crit.hit rate+5',}},
    -- left_ring="Defending Ring",
    -- right_ring="Murky Ring",
    -- back="Null Shawl",
	}
	
	sets.ja.Berserk = {head="Pumm. Mask +4"}
	sets.ja.Aggressor = {head="Pumm. Mask +4"}
	sets.ja.Retaliation = {hands="Pummeler's Mufflers +3",}
	sets.ja['Blood Rage'] = {body="Boli Lorica +3",}
	sets.ja.Warcry = {head="Agoge Mask +4"}
	
	
	-- sets.ja.Retaliation = set_combine(sets.ja, {hands="Pummeler's Mufflers +3",})
	-- sets.ja['Blood Rage'] = set_combine(sets.ja, {body="Boli Lorica +3",})
	-- sets.ja.Warcry = set_combine(sets.ja, {head="Agoge Mask +4"})
	
	--Treasure Hunter Stuff
	sets.th = {
    body={ name="Valorous Mail", augments={'STR+7','Weapon skill damage +2%','"Treasure Hunter"+2','Accuracy+7 Attack+7',}},
    legs={ name="Valorous Hose", augments={'"Mag.Atk.Bns."+7','Mag. crit. hit dmg. +3%','"Treasure Hunter"+2',}},
}
	
	
	sets.WS = {}
	sets.WS['Disaster'] = {
    main="Laphria",
    sub="Utu Grip",
    ammo="Knobkierrie",
    head="Agoge Mask +4",
    body="Sakpata's Plate",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    --right_ear="Thrud Earring",
	right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    --left_ring="Lehko's Ring",
    --right_ring="Niqmaddu Ring",
	left_ring="Sroda Ring",
	right_ring="Karieyh Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	sets.WS['Upheaval'] = {
    main="Laphria",
    sub="Utu Grip",
    ammo="Knobkierrie",
    head="Agoge Mask +4",
    body="Sakpata's Plate",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    --right_ear="Thrud Earring",
	right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
	
	sets.WS['Full Break'] = {
    ammo="Knobkierrie",
    head="Boii Mask +3",
    body="Pumm. Lorica +4",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Stikini Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	
	sets.WS['Savage Blade'] = {
    main="Naegling",
    sub="Blurred Shield +1",
    ammo="Knobkierrie",
    head="Agoge Mask +4",
    body="Sakpata's Plate",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    --right_ear="Thrud Earring",
	right_ear={ name="Boii Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+20','Mag. Acc.+20','Crit.hit rate+8','STR+15 VIT+15',}},
    left_ring="Lehko's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
	
    -- Change macro set on job change (Book, Page)
    --set_macro_page(1, 24)
	--send_command('input /macro book 40; wait 1; input /macro set 1')
	select_default_macro_book()
end


function precast(spell)
	--windower.add_to_chat(207,'PreCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
    -- if spell.cast_time then
        -- equip(sets.FC)
    -- end
	if spell.cast_time then
		--windower.add_to_chat(123,"'Spell With Cast Time '")
        --equip(sets.fc)
		
		-- elseif spell.name == "Warcry" then
		-- windower.add_to_chat(123,"'Its A WARRRior Crying '")
		
	    -- elseif spell.type == "JobAbility" then
		-- windower.add_to_chat(123,"'Its A Job Bility '")

	elseif sets.ja[spell.english] then
		--windower.add_to_chat(123,"'EQUIP A JobAbility Auto SETTTTTTTTTTTTTTTTT '")
        equip(sets.ja[spell.english])
	--end	



	
	elseif sets.WS[spell.english] then
		--windower.add_to_chat(123,"'EQUIP A WS SETTTTTTTTTTTTTTTTT '")
        equip(sets.WS[spell.english])
		
	-- elseif spell.type == "JobAbility" then
		-- --windower.add_to_chat(123,"'Equip Default Job Ability Equip. '")	
		-- equip(sets.ja)
		
	end		
end

function midcast(spell)
	--windower.add_to_chat(207,'MIDCASTTTTTT' .. tostring(spell.name)  .. tostring(spell.type)    )
	if spell.cast_time then
		if spell.type == "Item" then
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

-- -- 3. This logic determines which gear set to equip
-- function choose_gear()
    -- if player.status == 'Engaged' then
        -- equip(sets.engaged)
    -- else
        -- equip(sets.idle)
    -- end
-- end

-- 3. This logic determines which gear set to equip
function choose_gear()
	--windower.add_to_chat(123,"'Choose Gear'")
	if player.status=='Engaged' then
	--windower.add_to_chat(123,"'Im Engaged'")
		if tpmode == 1 then
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe Accuracy'")
			equip(sets.melee.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe'")
			equip(sets.melee)
			end
		elseif tpmode == 2 then --Club
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 2 Club Accuracy'")
			equip(sets.melee.club.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 2 Club'")
			equip(sets.melee.club)
			end
		elseif tpmode == 3 then --Pole
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 3 Polearm Accuracy'")
			equip(sets.melee.pole.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 3 Polearm'")
			equip(sets.melee.pole)
			end
		elseif tpmode == 4 then  --Sword
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe Accuracy'")
			equip(sets.melee.sword.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 4 Sword'")
			equip(sets.melee.sword)
			end
		end
	elseif player.in_combat then 
	    if tpmode == 1 then
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe Accuracy'")
			equip(sets.melee.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe'")
			equip(sets.melee)
			end
		elseif tpmode == 2 then --Club
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 2 Club Accuracy'")
			equip(sets.melee.club.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 2 Club'")
			equip(sets.melee.club)
			end
		elseif tpmode == 3 then --Pole
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 3 Polearm Accuracy'")
			equip(sets.melee.pole.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 3 Polearm'")
			equip(sets.melee.pole)
			end
		elseif tpmode == 4 then  --Sword
			if accmode then
			--windower.add_to_chat(123,"'Im Melee Mode 1 Great Axe Accuracy'")
			equip(sets.melee.sword.acc)
			else
			--windower.add_to_chat(123,"'Im Melee Mode 4 Sword'")
			equip(sets.melee.sword)
			end
		end	
	else
	--windower.add_to_chat(123,"'Im NotEngaged'")
	equip(sets.movement)
	end
end



-- function status_change(new,old)
    -- if T{'Idle','Resting'}:contains(new) then
        -- equip(sets.Idle)
    -- elseif new == 'Engaged' then
        -- equip(sets.TP[TP_mode])
    -- end
-- end

 function self_command(command)
	--windower.add_to_chat(123,'Self Commandddd' .. tostring(command) .. "Whererere")
	--toggleversion
	-- if command == 'togglemelee' then 
	-- meleemode = not meleemode
	
	if command == 'gaxe' then 
	--windower.add_to_chat(123,"'Set Melee Mode'")
		tpmode = 1
	elseif command == 'club' then 
		tpmode = 2
	elseif command == 'pole' then 
		tpmode = 3
	elseif command == 'sword' then 
		tpmode = 4
	end
	--windower.add_to_chat(123,"'Set New Gear'")
	choose_gear()
 end