minetest.register_globalstep(function(dtime)
    -- dtime: The time (in seconds) since the last global step.
    -- Broadcast different messages randomly after a certain amount of time
    local time_passed = 0
    time_passed = time_passed + dtime
    if time_passed >= 10 then  -- Changes the message however seconds has passed. example. 10
        local messages = {
            "[SERVER] Welcome!", -- Change to whatever you want. include something like [SERVER] so users know its the server.
            "[SERVER] Please enjoy your stay", -- Change to whatever you want. include something like [SERVER] so users know its the server.
            "[SERVER] See someone breaking the rules? Report them!", -- Change to whatever you want. include something like [SERVER] so users know its the server.
            "[SERVER] Please thank the owner and all of our staff team" -- Change to whatever you want. include something like [SERVER] so users know its the server.
        }
        local msg = messages[math.random(#messages)]  -- Select a random message.
        minetest.chat_send_all(msg)
        time_passed = 0  -- This function resets the timer.
    end
end)
