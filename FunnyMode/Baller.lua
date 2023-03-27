local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = ""
_G.CMonsters = true

-- Create entity
local Baller1 = Spawner.createEntity({
    CustomName = "Baller", -- Custom name of your entity
    Model = "https://github.com/zShadowSkilled1/Custom/blob/main/Baller.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 70,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"hehe", "yo bro", "baller got u lol", "xd", "aaaa uuhhhh."},
    IsCuriousLight = false
})



-----[[  Debug -=- Advanced  ]]-----
Baller1.Debug.OnEntitySpawned = function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = "Baller has spawned in lol"
    print("Entity has spawned:", Baller1)
end

Baller1.Debug.OnEntityDespawned = function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = "he despawned ur safe"
    print("Entity has despawned:", Baller1)
end

Baller1.Debug.OnEntityStartMoving = function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = "he started moving"
    print("Entity has started moving:", Baller1)
end

Baller1.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", Baller1)
end

Baller1.Debug.OnEntityEnteredRoom = function(room)
    if room == game.ReplicatedStorage.GameData.LatestRoom.Value - 1 then
        game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = "he is very close 2 u so hide"
    end
    print("Entity:", Baller1, "has entered room:", room)
end

Baller1.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", Baller1)
end

Baller1.Debug.OnDeath = function()
    warn("Player has died.")
end

Baller1.Debug.OnUseCrucifix = function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Caption.Text = "bro what is that"
end
------------------------------------

-- Run the created entity
while true do
wait(100)
Spawner.runEntity(Baller1)
end
