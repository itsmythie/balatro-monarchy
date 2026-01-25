Monarchy.Joker({
    key = "sushi_rolls",
    pos = {x = 2, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {rounds = 3, price = 0, mod = 1}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.rounds, localize('$')..card.ability.extra.price}, key = card.ability.extra.rounds == 1 and 'j_monarchy_sushi_rolls_alt'}
    end,
    calculate = function(self, card, context)
        if context.starting_shop then
            if card.ability.extra.rounds == 1 then
                SMODS.destroy_cards(card, nil, nil, true)
            end
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "rounds",
                scalar_value = "mod",
                operation = "-",
                scaling_message = {
                    message = localize('monarchy_sushi_rolls_set')
                }
            })
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.round_resets.temp_reroll_cost = card.ability.extra.price
                    calculate_reroll_cost(true)
                    return true
                end
            }))
            return nil, true
        end
    end,
})