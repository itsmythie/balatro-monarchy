Monarchy.Joker({
    key = "minted_set",
    pos = {x = 7, y = 1},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {xmult = 2}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.xmult, localize('k_common'), localize('k_uncommon'), localize('k_rare'), colours = {G.C.RARITY[1], G.C.RARITY[2], G.C.RARITY[3]}}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local rarities = {}
            for _, joker in ipairs(G.jokers.cards) do
                if joker ~= card then
                    rarities[joker.config.center.rarity] = true
                end
            end
            if rarities[1] and rarities[2] and rarities[3] then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
})