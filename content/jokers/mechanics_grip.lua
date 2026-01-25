Monarchy.Joker({
    key = "mechanics_grip",
    pos = {x = 6, y = 1},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {odds = 3}},
    loc_vars = function(self, info_queue, card)
        local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'monarchy_mechanics_grip')
        return {vars = {num, denom}}
    end,
    calculate = function(self, card, context)
        if context.stay_flipped and context.from_area == G.play then
            if SMODS.pseudorandom_probability(card, 'monarchy_mechanics_grip', 1, card.ability.extra.odds) then
                juice_card(card)
                SMODS.calculate_effect({message = 'Returned!'}, context.other_card)
                return {
                    modify = {to_area = G.hand}
                }
            end
        end
    end,
})