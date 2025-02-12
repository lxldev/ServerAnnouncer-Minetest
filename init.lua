local time_passed = 0  -- Declare it outside the function so it persists.

minetest.register_globalstep(function(dtime)
    time_passed = time_passed + dtime  -- Accumulate time
    if time_passed >= 300 then  -- 5 minutes
        local messages = {
            "[SERVER] Welcome",
            "[SERVER] Read the rules please",
            "[SERVER] Have fun",
            "[SERVER] Thank you for playing"
        }
        local msg = messages[math.random(#messages)]  -- Select a random message.
        minetest.chat_send_all(msg)
        time_passed = 0  -- Reset the timer
    end
end)
