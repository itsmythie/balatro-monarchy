-- Function to automatically apply mod prefix and item prefix to items in loc table
function Monarchy.prefix_loc_table(input, output)
    local mod_prefix = Monarchy.prefix
    for type, data in pairs(input) do
        local pref = mod_prefix .. '_'
        if SMODS[type].class_prefix then
            pref = SMODS[type].class_prefix .. '_' .. pref
        end
        output.descriptions[type] = output.descriptions[type] or {}
        for key, t in pairs(data) do
            output.descriptions[type][pref..key] = t
        end
    end
    return output
end

function Monarchy.hand_contains_rank(hand, rank)
    for _, card in ipairs(hand) do
        if card.base.value == rank then return true end
    end
end

function Monarchy.rank_from_deck(seed, face_cull)
	local ranks = {}
	local seed = seed or 'monarchy_random_rank_from_deck'
	for _, card in pairs(G.playing_cards) do
		ranks[card.base.value] = card.base.value
	end
    if face_cull then
        for rank, _ in pairs(ranks) do
            if SMODS.Ranks[rank].face then ranks[rank] = nil end
        end
    end
	return pseudorandom_element(ranks, seed)
end