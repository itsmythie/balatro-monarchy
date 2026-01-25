Monarchy.Joker = SMODS.Joker:extend({
    atlas = 'monarchy_joker',
    pos = {x = 0, y = 0},
    process_loc_text = function(self)
        SMODS.process_loc_text(G.localization.descriptions.Joker, self.key,
            G.localization.descriptions.Joker[self.key] or self.loc_txt or {
                name = {'{C:inactive}#1#','{C:red,s:0.6}Placeholder Joker'}, text = {'{C:inactive}This Joker has not got','{C:inactive}a localization entry'}
            })
        self.discovered = true
        self.unlocked = true
    end,
    loc_vars = function(self, info, card)
        return {vars = {self.original_key}}
    end
})

SMODS.Atlas({
    key = 'joker',
    path = 'monarchy-jokers.png',
    px = 71, py = 95
})

local joker_list = {
    'bicycle',
    'key_card',
    'library_card',
    'bees_threes',
    'can_of_snakes',
    'asteroid_belt',
    'gift_receipt',
    'arcade_stub',
    'daifugo',
    'iron_cross',
    'air_freshener',
    'kettlebell',
    'burn',
    'gummy_bears',
    'metronome',
    'wild_goose',
    'hailstorm',
    'vespertine',
    'old_sailor',
    'socket_set',
    'mechanics_grip',
    'minted_set',
    'private_eye',
    'break',
    'lineup',
    'watercolour',
    'sushi_rolls',
    'negative_film',
    'shattered',
    'subway_map',

    'supermassive',
    'lightning_bottle'
}

for _, filename in ipairs(joker_list) do
    assert(SMODS.load_file('content/jokers/'..filename..'.lua'), string.format('monarchy - Error found in %s.lua', filename))()
end