minetest.register_globalstep(function(dtime)
    -- dtime: The time (in seconds) since the last global step.
    -- Broadcast different messages randomly after a certain amount of time
    local time_passed = 0
    time_passed = time_passed + dtime
    if time_passed >= 10 then  -- Changes the message however seconds has passed. example. 10
        local messages = {
            "[SERVER] Welcome!",
            "[SERVER] Please enjoy your stay",
            "[SERVER] See someone breaking the rules? Report them!",
            "[SERVER] Please thank the owner and all of our staff team"
        }
        local msg = messages[math.random(#messages)]  -- Select a random message.
        minetest.chat_send_all(msg)
        time_passed = 0  -- This function resets the timer.
    end
end)
