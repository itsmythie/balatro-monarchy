Monarchy.Joker({
    key = "lightning_bottle",
    pos = {x = 2, y = 4},
    rarity = 3,
    cost = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {retriggers = 1}},
    loc_vars = function(self, info_queue, card)
        return {vars = {localize({set = 'Enhanced', key = 'm_mult', type = 'name_text'})}}
    end,
    calculate = function(self, card, context)
        if context.drawing_cards then
            local moved = 0
            for i=#G.deck.cards, 1, -1 do
                if SMODS.has_enhancement(G.deck.cards[i], 'm_mult') then
                    moved = moved + 1
                    local _c = G.deck.cards[i]
                    _c.ability.monarchy_lightning_bottle = true
                    table.remove(G.deck.cards, i)
                    table.insert(G.deck.cards, _c)
                end
                if moved == context.amount then
                    return {
                        message = '!'
                    }
                end
            end
            if moved > 0 then
                return {
                    message = '!'
                }
            end
        end
        if context.end_of_round then
            for _, pcard in ipairs(G.playing_cards) do
                if pcard.ability.monarchy_lightning_bottle then pcard.ability.monarchy_lightning_bottle = nil end
            end
        end
        if context.repetition and context.cardarea == G.play and context.other_card.ability.monarchy_lightning_bottle then
            return {
                repetitions = card.ability.extra.retriggers
            }            
        end
    end,
})