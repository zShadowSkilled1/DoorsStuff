local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
_G.CMonsters = true

-- Create entity
local Baller1 = Spawner.createEntity({
    CustomName = "Baller", -- Custom name of your entity
    Model = "https://github.com/zShadowSkilled1/Custom/blob/main/Baller.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 70, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 20,
    BackwardsMovement = false,
    BreakLights = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11151804223", -- Image1 url
            Image2 = "rbxassetid://11151804223", -- Image2 url
            Shake = true,
            Sound1 = {
                8435092314, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                8435092314, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"bro what", "Baller got u lol", "bruh", "lol."}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
Baller1.Debug.OnEntitySpawned = function()
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Baller has spawned, quickly hide lol")
    print("Entity has spawned:", Baller1)
end

Baller1.Debug.OnEntityDespawned = function()
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "he despawned ur safe")
    print("Entity has despawned:", Baller1)
end

Baller1.Debug.OnEntityStartMoving = function()
    firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Baller started moving")
    print("Entity has started moving:", Baller1)
end

Baller1.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", Baller1)
end

Baller1.Debug.OnEntityEnteredRoom = function(room)
    if room == game.ReplicatedStorage.GameData.LatestRoom.Value - 1 then
        firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "he is very close 2 u, hide")
    end
    print("Entity:", Baller1, "has entered room:", room)
end

Baller1.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", Baller1)
end

Baller1.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------

-- Run the created entity
while true do
wait(100)
end
