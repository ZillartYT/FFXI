


function get_sets()
    --Initialize your gear sets (leave empty if only using macros)
    
    --windower.add_to_chat(207,'MagicBurstStaffMOooOOOODE' .. tostring(spell.name)  .. tostring(spell.type))
    windower.add_to_chat(207,'Get My Sets')
	
	sets.fc = {
    --main="Daybreak",
    --sub="Archduke's Shield",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Fast Cast"+7',}},
    body="Jhakri Robe +2",
    hands="Bunzi's Gloves",
    legs={ name="Lengo Pants", augments={'INT+6','"Mag.Atk.Bns."+13',}},
    feet="Nyame Sollerets",
	neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Prolix Ring",
    back="Fi Follet Cape +1",
	}
	
	sets.melee = {
    --main="Ethereal Dagger",
    --sub="Archduke's Shield",
    ammo="Amar Cluster",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
    left_ring="Lehko's Ring",
    right_ring="Stikini Ring",
    back="Null Shawl",
	}
	
	
	sets.idle = {
    --main="Ethereal Dagger",
    --sub="Archduke's Shield",
    ammo="Amar Cluster",
    head="Null Masque",
    body="Malignance Tabard",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Plat. Mog. Belt",
    left_ear="Infused Earring",
    right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
    left_ring="Paguroidea Ring",
    right_ring="Karieyh Ring +1",
    back="Null Shawl",
}
	
	sets.WS = {}
	
	sets.WS['Shining Strike'] = {
	
	
	
	}
	
	
	select_default_macro_book() 
end

function select_default_macro_book()
	send_command('input /macro book 4; wait 1; input /macro set 2')
end


function precast(spell)
	if spell.cast_time then
		windower.add_to_chat(207,'Get My Precast Sets')
		equip(sets.fc)
		if spell.type == 'Item' then
		end
	
	elseif sets.WS[spell.english] then
		--windower.add_to_chat(123,"'EQUIP A WS SETTTTTTTTTTTTTTTTT '")
        equip(sets.WS[spell.english]) 
	end
		
end

function midcast(spell)
	windower.add_to_chat(207,'Get My Midcast Sets')
	equip(sets.melee)
end

function aftercast(spell)
	windower.add_to_chat(207,'Get My Aftercast Sets')
	choose_gear()
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
			equip(sets.melee)
		
	elseif player.in_combat then 
	 
			equip(sets.melee)
	
	else
		--windower.add_to_chat(123,"'Im NotEngaged'")
		equip(sets.idle)
	end
end