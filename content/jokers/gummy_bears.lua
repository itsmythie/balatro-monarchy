Monarchy.Joker({
    key = "gummy_bears",
    pos = {x = 2, y = 1},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chance = 3, health = 3, mod = 1}},
    loc_vars = function(self, info_queue, card)
        local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.chance, 'monarchy_gummy_bears')
        return {vars = {card.ability.extra.health, num, denom}, key = card.ability.extra.health == 1 and 'j_monarchy_gummy_bears_alt'}
    end,
    calculate = function(self, card, context)
        if context.before then
            for _, p_card in ipairs(context.scoring_hand) do
                if p_card.ability.set ~= 'Enhanced' and SMODS.pseudorandom_probability(card, 'monarchy_gummy_bears', 1, card.ability.extra.chance) then
                    p_card:set_ability(SMODS.poll_enhancement({guaranteed = true, key = 'monarchy_gummy_bear_proc'}), nil, true)
                    juice_card(p_card)
                    SMODS.calculate_effect({message = localize('monarchy_enhanced'), juice_card = card, message_card = p_card}, p_card)
                end
            end
            if card.ability.extra.health == 1 then 
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_eaten_ex'),
                }
            end
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = "health",
                scalar_value = "mod",
                operation = "-",
                message_key = 'a_chips_minus'
            })
            return nil, true
        end
    end,
})