Monarchy.Joker({
    key = "metronome",
    pos = {x = 1, y = 12},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 50, mult = 50, current = 'chips'}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips, card.ability.extra.mult, localize('monarchy_'..card.ability.extra.current), colours = {card.ability.extra.current == 'chips' and G.C.BLUE or G.C.RED}}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                [card.ability.extra.current] = card.ability.extra[card.ability.extra.current]
            }
        end
        if context.after then
            card.ability.extra.current = card.ability.extra.current == 'chips' and 'mult' or 'chips'
            return {
                message = localize('monarchy_switched'),
                colour = card.ability.extra.current == 'chips' and G.C.BLUE or G.C.RED
            }
        end
    end,
})