Monarchy.Joker({
    key = "private_eye",
    pos = {x = 8, y = 1},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and context.beat_boss then
            local tag_pool = get_current_pool('Tag')
            local selected_tag = pseudorandom_element(tag_pool, 'monarchy_private_eye')
            local it = 0
            while selected_tag == 'UNAVAILABLE' do
                it = it + 1
                selected_tag = pseudorandom_element(tag_pool, 'monarchy_private_eye'..it)
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = (function()
                    add_tag(Tag(selected_tag, false, 'Small'))
                    play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                    return true
                end)
            }))
            return {
                message = localize('monarchy_tag_added')
            }
        end
    end,
})