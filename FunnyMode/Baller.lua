                local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
                local Baller1 = Spawner.createEntity({
                    CustomName = "Baller", -- Custom name of your entity
                    Model = "https://github.com/zShadowSkilled1/Custom/blob/main/Baller.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 70, -- Percentage, 100 = default Rush speed
                    DelayTime = 2, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = false,
                    KillRange = 20,
                    BackwardsMovement = true,
                    BreakLights = false,
                    FlickerLights = {
                        false, -- Enabled/Disabled
                        2, -- Time (seconds)
                    },
                    Cycles = {
                        Min = 1,
                        Max = 1,
                        WaitTime = 0,
                    },
                    CamShake = {
                        false, -- Enabled/Disabled
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
                    local BallerRandom = math.random(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value + 1, 100)
                    print("Entity has spawned:", Baller1)
                end
                
                Baller1.Debug.OnEntityDespawned = function()
                    print("Entity has despawned:", Baller1)
                end
                
                Baller1.Debug.OnEntityStartMoving = function()
                    print("Entity has started moving:", Baller1)
                end
                
                Baller1.Debug.OnEntityFinishedRebound = function()
                    print("Entity has finished rebound:", Baller1)
                end
                
                Baller1.Debug.OnEntityEnteredRoom = function(room)
                    print("Entity:", Baller1, "has entered room:", room)
                end
                
                Baller1.Debug.OnLookAtEntity = function()
                    print("Player has looked at entity:", Baller1)
                end
                
                Baller1.Debug.OnDeath = function()
                    warn("Player has died.")
                end
    
                Spawner.runEntity(Baller1)
