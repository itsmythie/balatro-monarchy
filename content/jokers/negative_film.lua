Monarchy.Joker({
    key = "negative_film",
    pos = {x = 4, y = 2},
    soul_pos = {x = 3, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {odds = 3, sets = {Tarot = 'k_tarot', Planet = 'k_planet'}}},
    loc_vars = function(self, info_queue, card)
        local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'monarchy_negative_film')
        return {vars = {localize(card.ability.extra.sets.Tarot), localize(card.ability.extra.sets.Planet), num, denom, localize({set = 'Edition', key = 'e_negative', type = 'name_text'}), colours = {G.C.SECONDARY_SET.Tarot, G.C.SECONDARY_SET.Planet}}}
    end,
    check_card = function(self, card, target)
        if card.ability.extra.sets[target.ability.set] then
            if SMODS.pseudorandom_probability(card, 'monarchy_negative_film', 1, card.ability.extra.odds) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        target:set_edition('e_negative', true)
                        return true
                    end
                }))
                SMODS.calculate_effect({
                    message = localize({set = 'Edition', key = 'e_negative', type = 'name_text'}),
                    colour = G.C.DARK_EDITION,
                    message_card = target,
                    juice_card = card
                }, target)
                return true
            end
        end
    end,
    calculate = function(self, card, context)
        if context.modify_shop_card then
            return nil, self:check_card(card, context.card)
        end
        if context.open_booster then
            G.E_MANAGER:add_event(Event({
                func = function()
                    for _, p_card in ipairs(G.pack_cards.cards) do
                        self:check_card(card, p_card)
                    end
                    return true
                end
            }))
        end
    end,
})

local Monarchy_Hook_smods_showman = SMODS.showman
function SMODS.showman(key)
    local films = SMODS.find_card('j_monarchy_negative_film')
    if next(films) and films[1].ability.extra.sets[G.P_CENTERS[key].set] then
        return true
    end
    return Monarchy_Hook_smods_showman(key)
end