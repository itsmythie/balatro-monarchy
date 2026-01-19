SMODS.Atlas({
    key = 'decks', path = 'decks.png',
    px = 71, py = 95
})

Monarchy.Back = SMODS.Back:extend({
    atlas = 'monarchy_decks',
    pos = {x = 0, y= 0},
    unlocked = true,
	discovered = true,
    process_loc_text = function(self)
        SMODS.process_loc_text(G.localization.descriptions.Back, self.key,
            G.localization.descriptions.Back[self.key] or self.loc_txt or {
                name = {'{C:inactive}#1#','{C:red,s:0.6}Placeholder Deck'}, text = {'{C:inactive}This Deck has not got','{C:inactive}a localization entry'}
            })
    end,
    loc_vars = function(self, info, card)
        return {vars = {self.original_key}}
    end
})

Monarchy.Back({
    key = 'impression',
})

Monarchy.Back({
    key = 'royale',
    pos = {x=1, y=0}
})