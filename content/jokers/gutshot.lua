Monarchy.Joker({
    key = "gutshot",
    pos = {x = 9, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {retriggers = 2, hand = 'Straight'}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.retriggers, localize(card.ability.extra.hand, 'poker_hands')}}
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and next(context.poker_hands[card.ability.extra.hand]) and context.poker_hands[card.ability.extra.hand][1][math.ceil(#context.poker_hands[card.ability.extra.hand][1]/2)] == context.other_card then
            return {
                repetitions = card.ability.extra.retriggers
            }
        end
    end,
})