repeat wait()until game:IsLoaded()and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character;local a=game:GetService'CoreGui'local b=game:GetService'Workspace'local c=game:GetService'RunService'local d=game:GetService'StarterGui'local e=game:GetService'HttpService'local f=game:GetService'TweenService'local g=game:GetService'Players'['LocalPlayer']local h=game:GetService'UserInputService'local i=game:GetService'ReplicatedStorage'local j=game:GetService'VirtualInputManager'local k=g.Character or g.CharacterAdded:Wait''local l={5703353651,6075085184,7071564842,10089970465,10795158121}local m={4310463616,4310463940,4465987684,4646472003,5703355191,6075083204,6847035264,9944262922,10651517727}local n={"IceBarricade","Blocker1","Blocker2","Blocker3","Model","Small1","Small2","Small3"}local o={"SummonerSummonWeak","SummonerSummonStrong","CorruptedGreaterTree","DavyJones","BOSSHogRider","BOSSKrakenMain","BOSSKrakenArm3-Arm#1","BOSSKrakenArm3-Arm#2","BOSSKrakenArm3-Arm#3","BOSSKrakenArm3-Arm#4","BOSSKrakenArm3-Arm#5","BOSSKrakenArm3-Arm#6","BOSSKrakenArm3-Arm#7","BOSSKrakenArm3-Arm#8"}local p=k.Properties.Class.Value;local q={["Swordmaster"]={"Swordmaster1","Swordmaster2","Swordmaster3","Swordmaster4","Swordmaster5","Swordmaster6"},["Mage"]={"Mage1","Mage2","Mage3"},["Defender"]={"Defender1","Defender2","Defender3","Defender4","Defender5"},["DualWielder"]={"DualWield1","DualWield2","DualWield3","DualWield4","DualWield5","DualWield6","DualWield7","DualWield8","DualWield9","DualWield10"},["Guardian"]={"Guardian1","Guardian2","Guardian3","Guardian4"},["IcefireMage"]={"IcefireMage1","IcefireMage2","IcefireMage3"},["Berserker"]={"Berserker1","Berserker2","Berserker3","Berserker4","Berserker5","Berserker6"},["Paladin"]={"Paladin1","Paladin2","Paladin3","Paladin4"},["Demon"]={"Demon11","Demon1","Demon25","Demon12","Demon24","Demon2","Demon13","Demon23","Demon3","Demon14","Demon22","Demon4","Demon15","Demon21","Demon5","Demon16","Demon21","Demon6","Demon17","Demon20","Demon7","Demon18","Demon8","Demon19","Demon9","Demon10"},["Archer"]={"Archer"},["Dragoon"]={"Dragoon1","Dragoon2","Dragoon3","Dragoon4","Dragoon5","Dragoon6"},["Summoner"]={"Summoner1","Summoner2","Summoner3","Summoner4"},["Warlord"]={"Warlord2","Warlord4","Warlord3","Warlord1"}}local r=0;local s=q[p]d:SetCore("SendNotification",{Title="Loading",Duration=3,Text="Please wait",Icon="https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..'2727067538'.."&fmt=png&wd=420&ht=420"})wait(2)local t={Toggleska=false,Togglespa=false,Toggleshs=false,Togglesps=false,Togglesaf=false,Togglescd=false,Togglesnc=false,Toggleshl=false,Togglesij=false,Toggleslm=false,Togglesenv=false}local u='WorldZero-TwisT'local v=coroutine.wrap(function()if readfile and isfile(("%s.json"):format(u))then t=e:JSONDecode(readfile(("%s.json"):format(u)))else writefile(("%s.json"):format(u),e:JSONEncode(t))messageboxasync('Wrote settings to workspace, edit the \''..u..'\' file to change settings. Delete file if problems occur','Setting File Path',0x40000)end end)v()local function w()if writefile then writefile(("%s.json"):format(u),e:JSONEncode(t))end end;local function x(y,...)local z=setrawmetatable;local A=getfenv()local B=getrawmetatable(A)z(A,{__index=getrenv()})local C={y(...)}z(A,B)return unpack(C)end;local D=x(require,i.Shared.Combat)local function E()local F=nil;if b:FindFirstChild'MissionObjects'then for G,H in pairs(b.MissionObjects:GetDescendants'')do if table.find(n,H.Name)and H:FindFirstChild'HealthProperties'and elapsedTime()>120 then if H.Name=='IceBarricade'then F=H.Part elseif H.Name=='Blocker1'then F=H.Part elseif H.Name=='Blocker2'then F=H.Part elseif H.Name=='Blocker3'then F=H.Part elseif H.Name=='Model'then F=H.hitbox elseif H.Name=="Small1"and H.MeshPart.Position.y<260 then F=H.MeshPart elseif H.Name=="Small2"and H.MeshPart.Position.y<260 then F=H.MeshPart elseif H.Name=="Small3"and H.MeshPart.Position.y<260 then F=H.MeshPart end end end end;if b:FindFirstChild'TriggerBarrel'then F=b.TriggerBarrel.Collision end;local I=3000;for G,H in pairs(b.Mobs:GetChildren'')do if not table.find(o,H.Name)then if H:FindFirstChild'Collider'and H:FindFirstChild'HealthProperties'and H.HealthProperties.Health.Value>1/5 and not H:FindFirstChild'NoHealthbar'then local J=math.floor((g.Character.HumanoidRootPart.Position-H.Collider.Position).Magnitude)if J<=I then I=J;F=H.Collider end end end end;if game.PlaceId==4646475570 and b:FindFirstChild'ImmuneShield'and b.Gate.HealthProperties.Health.Value~=0 then F=b.Gate.Base end;if b.Mobs:FindFirstChild'CorruptedGreaterTree'then if not b:FindFirstChild'GreaterTreeShield'then F=b.Mobs.CorruptedGreaterTree.Collider end end;if b.Mobs:FindFirstChild'DavyJones'and not F then F=b.Mobs.DavyJones.Collider end;if b.Mobs:FindFirstChild'BOSSHogRider'and b.Mobs.BOSSHogRider.Collider.Position.y<380 then F=b.Mobs.BOSSHogRider.Collider end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#1')then if b.Mobs['BOSSKrakenArm3-Arm#1']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#1'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#1'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#2')then if b.Mobs['BOSSKrakenArm3-Arm#2']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#2'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#2'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#3')then if b.Mobs['BOSSKrakenArm3-Arm#3']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#3'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#3'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#4')then if b.Mobs['BOSSKrakenArm3-Arm#4']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#4'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#4'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#5')then if b.Mobs['BOSSKrakenArm3-Arm#5']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#5'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#5'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#6')then if b.Mobs['BOSSKrakenArm3-Arm#6']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#6'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#6'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#7')then if b.Mobs['BOSSKrakenArm3-Arm#7']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#7'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#7'].Subcollider.SubPrimaryPart end end;if b.Mobs:FindFirstChild('BOSSKrakenArm3-Arm#8')then if b.Mobs['BOSSKrakenArm3-Arm#8']:FindFirstChild'Subcolliders'and b.Mobs['BOSSKrakenArm3-Arm#8'].Subcolliders:FindFirstChild'Value'then F=b.Mobs['BOSSKrakenArm3-Arm#8'].Subcollider.SubPrimaryPart end end;return F end;local function K()local L;local M=1500;for G,H in pairs(b.Mobs:GetChildren'')do if not table.find(o,H.Name)then if b.Mobs:FindFirstChild('SummonerSummonWeak')and H:FindFirstChild("Collider")and H:FindFirstChild("HealthProperties")and H.HealthProperties.Health.Value>8000 and not H:FindFirstChild("NoHealthbar")then local J=math.floor((b.Mobs.SummonerSummonWeak.Collider.Position-H.Collider.Position).Magnitude)if J<=M then M=J;L=H.Collider end end end end;return L end;local function N()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=9/64 then if O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()r=r+1;D:AttackWithSkill(s[r],g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector)wait()if r>=#s then r=0 end end;task.wait()end end)end;local function P()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=9/64 then if O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()r=r+1;D:AttackWithSkill(s[r],g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector)wait(.1)if r>=#s then r=0 end end;task.wait(.1)end end)end;local function Q()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<70 and os.clock()-DeBounce>=9/64 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()r=r+1;D:AttackWithSkill(s[r],O.Position)wait(.1)if r>=#s then r=0 end end;task.wait(.1)end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<50 and os.clock()-DeBounce>=5 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("ArcaneBlast",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<50 and os.clock()-DeBounce>=15 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("ArcaneBlastAOE",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<60 and os.clock()-DeBounce>=8 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>20 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("ArcaneWave9",O.Position)wait(2)D:AttackWithSkill("ArcaneWave1",O.Position)wait(2)D:AttackWithSkill("ArcaneWave8",O.Position)wait(2)D:AttackWithSkill("ArcaneWave5",O.Position)wait(2)D:AttackWithSkill("ArcaneWave7",O.Position)wait(2)D:AttackWithSkill("ArcaneWave3",O.Position)wait(2)D:AttackWithSkill("ArcaneWave6",O.Position)wait(2)D:AttackWithSkill("ArcaneWave4",O.Position)wait(2)D:AttackWithSkill("ArcaneWave2",O.Position)end;task.wait()end end)end;local function R()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=9/64 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(3/4)end;if not t.Toggleska then break end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()r=r+1;D:AttackWithSkill(s[r],O.Position)wait(.1)if r>=#s then r=0 end end;task.wait(.1)end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if not t.Toggleska then break end;if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=6 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("IcySpikes3",O.Position)wait(2)D:AttackWithSkill("IcySpikes1",O.Position)wait(2)D:AttackWithSkill("IcySpikes4",O.Position)wait(2)D:AttackWithSkill("IcySpikes2",O.Position)wait(2)D:AttackWithSkill("IcySpikes5",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if not t.Toggleska then break end;if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=10 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("IcefireMageFireball",O.Position)wait(2)D:AttackWithSkill("IcefireMageFireballBlast",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if not t.Toggleska then break end;if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("LightningStrike3",O.Position)wait(2)D:AttackWithSkill("LightningStrike1",O.Position)wait(2)D:AttackWithSkill("LightningStrike4",O.Position)wait(2)D:AttackWithSkill("LightningStrike2",O.Position)wait(2)D:AttackWithSkill("LightningStrike5",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if not t.Toggleska then break end;if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=20 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>20 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("IcefireMageUltimateFrost",O.Position)wait(2)D:AttackWithSkill("IcefireMageUltimateMeteor3",O.Position)wait(2)D:AttackWithSkill("IcefireMageUltimateMeteor1",O.Position)wait(2)D:AttackWithSkill("IcefireMageUltimateMeteor4",O.Position)wait(2)D:AttackWithSkill("IcefireMageUltimateMeteor2",O.Position)end;task.wait()end end)end;local function S()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<60 and os.clock()-DeBounce>=1/3 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1)end;if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<20 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("MageOfLightCharged",O.Position)wait()D:AttackWithSkill("MageOfLightBlastCharged",O.Position)wait()end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<60 and os.clock()-DeBounce>=9/64 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<10 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("MageOfLight",O.Position)wait(.2)D:AttackWithSkill("MageOfLightBlast",O.Position)wait(.2)end;task.wait()end end)end;local function T()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<80 and os.clock()-DeBounce>=.2 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()r=r+1;D:AttackWithSkill(s[r],O.Position)wait(.1)if r>=#s then r=0 end end;task.wait(.1)end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;if O and os.clock()-DeBounce>=8 then DeBounce=os.clock()i.Shared.Combat.Skillsets.Summoner.Summon:FireServer()end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<50 and os.clock()-DeBounce>=10 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("SoulHarvest1",O.Position)wait(1/2)i.Shared.Combat.Skillsets.Summoner.SoulHarvest:FireServer(O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and os.clock()-DeBounce>=30 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()i.Shared.Combat.Skillsets.Summoner.Ultimate:FireServer()end;task.wait()end end)spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=K()if O and b.Mobs:FindFirstChild('SummonerSummonWeak')then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;local U=(b.Mobs.SummonerSummonWeak.Collider.Position-O.Position).Magnitude;if U<8 and g.Character:WaitForChild'HumanoidRootPart'and os.clock()-DeBounce>=2 then DeBounce=os.clock()i.Shared.Combat.Skillsets.Summoner.ExplodeSummons:FireServer()end end;task.wait()end end)end;local function V()task.spawn(function()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<12 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;r=r+1;wait(1/2)D:AttackWithSkill(s[r],g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait()if r>=#s then r=0 end end;task.wait(1.5)end end)task.spawn(function()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<12 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;D:AttackWithSkill("DemonDPS2",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS4",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS6",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS8",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS1",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS3",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS7",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)D:AttackWithSkill("DemonDPS9",g.Character.HumanoidRootPart.Position,g.Character.HumanoidRootPart.CFrame.lookVector+Vector3.new(0,math.random(-6,-4),0))wait(1)end;task.wait(1.2)end end)task.spawn(function()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;if not t.Toggleska then break end;i.Shared.Combat.Skillsets.Demon.Ultimate:FireServer()task.wait(15)end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<80 and os.clock()-DeBounce>=10 then if O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("ScytheThrowDPS1",O.Position)wait(2)D:AttackWithSkill("ScytheThrowDPS2",O.Position)wait(2)D:AttackWithSkill("ScytheThrowDPS3",O.Position)wait()end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=14 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("DemonSoulAOE2",O.Position)wait(2)D:AttackWithSkill("DemonSoulAOE4",O.Position)wait(2)D:AttackWithSkill("DemonSoulAOE1",O.Position)wait(2)D:AttackWithSkill("DemonSoulAOE3",O.Position)wait()end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<60 and os.clock()-DeBounce>=16 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("DemonLifeStealDPS",O.Position)wait(2)D:AttackWithSkill("DemonLifeStealAOE",O.Position)wait()end;task.wait()end end)task.spawn(function()DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do local O=E()if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;if not t.Toggleska then break end;if os.clock()-DeBounce>=2 then DeBounce=os.clock()i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()wait(2)i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()wait(2)i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()i.Shared.Combat.Skillsets.Demon.Demonic:FireServer()wait(2)end;task.wait()end end)end;local function W()task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and g.Character.HumanoidRootPart and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=9/64 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(1/2)end;if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;r=r+1;DeBounce=os.clock()D:AttackWithSkill(s[r],g.Character.HumanoidRootPart.Position+Vector3.new(math.random(-5,5),math.random(-2,8),math.random(-5,5)),g.Character.HumanoidRootPart.CFrame.lookVector)wait()if r>=#s then r=0 end end;task.wait(.1)end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and g.Character.HumanoidRootPart and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=3 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>15 and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100<95 and not O.Parent.MobProperties.Elite.Value and not O.Parent.Name:find'Buff'then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("Piledriver2",O.Position+Vector3.new(math.random(-5,5),math.random(-2,8),math.random(-5,5)))wait(2)D:AttackWithSkill("Piledriver4",O.Position+Vector3.new(math.random(-5,5),math.random(-2,8),math.random(-5,5)))wait(2)D:AttackWithSkill("Piledriver3",O.Position+Vector3.new(math.random(-5,5),math.random(-2,8),math.random(-5,5)))wait(2)D:AttackWithSkill("Piledriver1",O.Position+Vector3.new(math.random(-5,5),math.random(-2,8),math.random(-5,5)))wait()end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and math.floor((g.Character.HumanoidRootPart.Position-O.Position).Magnitude)<50 and os.clock()-DeBounce>=10 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("BlockingWarlord",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<55 and os.clock()-DeBounce>=6 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("ChainsOfWar",O.Position)end;task.wait()end end)task.spawn(function()local DeBounce=os.clock()while g.Character.HealthProperties.OutOfCombat~=0 do if not t.Toggleska then break end;local O=E()if O and(g.Character.HumanoidRootPart.Position-O.Position).Magnitude<60 and os.clock()-DeBounce>=15 then if O and O.Parent.HealthProperties.Health.Value<1/5 then break end;DeBounce=os.clock()D:AttackWithSkill("WarlordUltimate3",O.Position)wait(2)D:AttackWithSkill("WarlordUltimate1",O.Position)wait(2)D:AttackWithSkill("WarlordUltimate4",O.Position)wait(2)D:AttackWithSkill("WarlordUltimate2",O.Position)wait(2)D:AttackWithSkill("WarlordUltimate5",O.Position)wait()end;task.wait()end end)end;local X=loadstring(game:HttpGet('https://raw.githubusercontent.com/neonixran/MaterialLua/master/Module.lua'),'Material Lua')()local Y=X:Load({Title='World Zero',Position="Left",Style=3,SizeX=185,SizeY=412,Overrides={MainFrame=Color3.fromRGB(25,25,25)}})local Z=Y:New({Title='Main'})local _=Y:New({Title='Menu'})local a0=Y:New({Title='Misc'})local a1=Y:New({Title='Settings'})local a2=Z:Toggle({Text='killAura',Enabled=t.Toggleska,Callback=function(a3)t.Toggleska=a3;w()if p=='Mage'then Q()elseif p=='Swordmaster'then N()elseif p=='Defender'then P()elseif p=='DualWielder'then N()elseif p=='Berserker'then N()elseif p=='Guardian'then P()elseif p=='Paladin'then N()elseif p=='Dragoon'then N()elseif p=='IcefireMage'then R()elseif p=='MageOfLight'then S()elseif p=='Dragoon'then S()elseif p=='Demon'then V()elseif p=='Archer'then N()elseif p=='Summoner'then T()elseif p=='Warlord'then W()end end})local a4=a0:Toggle({Text='MoL Passive',Enabled=t.Toggleshs,Callback=function(a3)t.Toggleshs=a3;w()task.spawn(function()while t.Toggleshs do if not t.Toggleshs then break end;for G,H in pairs(game.Players:GetPlayers'')do local a5=H;i.Shared.Combat.Skillsets.MageOfLight.HealCircle:FireServer(a5)end;task.wait(12)end end)task.spawn(function()while t.Toggleshs do if not t.Togglesps then break end;for G,H in pairs(game.Players:GetPlayers'')do local a5=H;i.Shared.Combat.Skillsets.MageOfLight.Barrier:FireServer(a5)end;task.wait(43)end end)end})Z:Toggle({Text='petSkill',Enabled=t.Togglesps,Callback=function(a3)t.Togglesps=a3;w()local function a6(a7)j:SendKeyEvent(true,a7,false,game)end;local function a8(a7)j:SendKeyEvent(false,a7,false,game)end;while t.Togglesps do a6(Enum.KeyCode.One)wait()a8(Enum.KeyCode.One)wait(20)end end})Z:Toggle({Text='autoFarm',Enabled=t.Togglesaf,Callback=function(a3)t.Togglesaf=a3;w()local a9,aa,ab=nil,nil,nil;if p=='Mage'or p=='IcefireMage'or p=='MageOfLight'or p=='Archer'or p=='Summoner'then a9,aa=36,30;ab=3 elseif p=='Swordmaster'or p=='Defender'or p=='DualWielder'or p=='Berserker'or p=='Paladin'or p=='Guardian'or p=='Dragoon'or p=='Warlord'then a9,aa=3,16;ab=5 elseif p=='Demon'then a9,aa=3,13;ab=5 end;task.spawn(function()local ac=TweenInfo.new(ab,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)while c.Heartbeat:Wait()do if not t.Togglesaf then break end;local O=E()if O and g.Character.HealthProperties.OutOfCombat~=0 then if O and O.Parent.HealthProperties.Health.Value/O.Parent.HealthProperties.MaxHealth.Value*100>98 then wait(3/4)end;local ad=5;local ae=360*(tick()%ad)/ad;f:Create(g.Character.HumanoidRootPart,ac,{CFrame=CFrame.new(O.Position)*CFrame.Angles(0,math.rad(ae),0)*CFrame.new(0,a9,aa)}):Play()end end end)task.spawn(function()if t.Togglesaf then g.Character.HumanoidRootPart.CanCollide=false;if not g.Character.HumanoidRootPart:FindFirstChild'BodyVelocity'then local af=Instance.new'BodyVelocity'af.Velocity=Vector3.new(0,0,0)af.Parent=g.Character:WaitForChild'HumanoidRootPart'end;if b:FindFirstChild'MissionObjects':FindFirstChild'MissionStart'then for G,H in pairs(b.MissionObjects.MissionStart:GetDescendants'')do if H:IsA'TouchTransmitter'and H.Parent then H.Parent.CFrame=g.Character.HumanoidRootPart.CFrame end end end;for G,H in pairs(k:GetChildren'')do if H:IsA'BasePart'and H.Name=="Collider"then H.Touched:Connect(function(ag)if ag:IsA'BasePart'and ag.Transparency~=1 then if ag.Parent~=k then local ah=.3;ag.Transparency=ah;local ai=Color3.fromRGB(140,140,140)ag.Color=ai end end end)end end end;if not t.Togglesaf then g.Character.HumanoidRootPart.CanCollide=true;while g.Character.HumanoidRootPart:FindFirstChild('BodyVelocity')do g.Character.HumanoidRootPart.BodyVelocity:Destroy()task.wait()end end;if b:FindFirstChild('MissionObjects')and elapsedTime()>180 then while wait(2)do if not t.Togglesaf then break end;for G,H in pairs(b:GetDescendants())do if H:FindFirstChild'HealthProperties'and H.HealthProperties.Health.Value<=0 then task.defer(H.Destroy,H)end end end end end)end})Z:Toggle({Text='collectDrop',Enabled=t.Togglescd,Callback=function(a3)t.Togglescd=a3;w()task.spawn(function()local aj=require(i.Shared.Drops)local ak=getupvalue(aj.Start,4)while t.Togglescd do if not t.Togglescd then break end;for al,H in pairs(ak)do H.model:Destroy()H.followPart:Destroy()i.Shared.Drops.CoinEvent:FireServer(H.id)table.remove(ak,al)end;task.wait(2)end end)end})Z:Toggle({Text='NoClip',Enabled=t.Togglesnc,Callback=function(a3)t.Togglesnc=a3;w()g.Character.HumanoidRootPart.CanCollide=true;if t.Togglesnc then g.Character.HumanoidRootPart.CanCollide=false end end})Z:Toggle({Text='headLamp',Enabled=t.Toggleshl,Callback=function(a3)t.Toggleshl=a3;w()if t.Toggleshl then local am;local an=Instance.new('PointLight',g.Character.Head)an.Brightness=.8;an.Range=180;am.Changed:connect(function()am.Brightness=1;am.ClockTime=12;am.FogEnd=1000000;am.GlobalShadows=true;am.Ambient=Color3.new(1,1,1)am.ColorShift_Top=Color3.new(1,1,1)am.ColorShift_Bottom=Color3.new(1,1,1)end)else k.Head.PointLight:Destroy()end end})Z:Toggle({Text='infiniteJump',Enabled=t.Togglesij,Callback=function(a3)t.Togglesij=a3;w()local function ao(ap,aq)if ap~=nil then aq(ap)end end;h.InputBegan:connect(function(ar)if t.Togglesij and ar.UserInputType==Enum.UserInputType.Keyboard and ar.KeyCode==Enum.KeyCode.Space then ao(g.Character.Humanoid,function(self)if self:GetState()==Enum.HumanoidStateType.Jumping or self:GetState()==Enum.HumanoidStateType.Freefall then ao(self.Parent.HumanoidRootPart,function(self)self.Velocity=Vector3.new(0,100,0)end)end end)end end)ao()end})Z:Toggle({Text='Levitating Me',Enabled=t.Toggleslm,Callback=function(a3)t.Toggleslm=a3;w()local function as(at,au)for av,aw in pairs(at)do au(aw,av)end end;local function ax(ay)local ap=Instance.new(ay)return function(az)as(az,function(aw,aA)ap[aA]=aw end)return ap end end;do local aB=nil;while t.Toggleslm do if not aB then aB=ax"Part"{Parent=workspace.CurrentCamera,Name="LMP",Transparency=1,Size=Vector3.new(3,1,3),Anchored=true}end;if k then aB.CFrame=g.Character.HumanoidRootPart.CFrame-Vector3.new(0,3.6,0)end;task.wait()end end end})Z:Separator()Z:Slider({Text="sprintSpeed",Min=30,Max=120,Default=55,Callback=function(aw)require(i.Shared.Settings).SPRINT_WALKSPEED=aw end})Z:Toggle({Text='ReloadOnHop',Enabled=t.Togglesenv,Callback=function(a3)t.Togglesenv=a3;w()game:GetService'Players'.PlayerRemoving:connect(function(aC)if aC==g and t.Togglesenv then if syn then syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiKe2022/wz-v2.7/main/combine.lua"))()')elseif fluxus then fluxus.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiKe2022/wz-v2.7/main/combine.lua"))()')else queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiKe2022/wz-v2.7/main/combine.lua"))()')end end end)end})_:Button({Text='Bank',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.Bank):Toggle()end})_:Button({Text='Upgrade',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.ItemUpgrade):Toggle()end})_:Button({Text='Zero Altar',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.Fusion):Open()end})_:Button({Text='Way Stones',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.Waystones):Open()end})_:Button({Text='World Menu',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.WorldTeleport):Toggle()end})_:Button({Text='Dungeon Menu',XAlignment='Center',Callback=function()require(i.Client.Gui.GuiScripts.MissionSelect):Toggle()end})a1:GuiSettings()for G,H in pairs(m)do if game.PlaceId==H then t.Togglesaf=false;d:SetCore("SendNotification",{Title="Open World",Duration=15,Text="AutoFarm Disabled"})end end;if b:FindFirstChild'MissionObjects'then b.MissionObjects.DescendantAdded:Connect(function(aD)if aD:IsA'TouchTransmitter'and not aD.Parent.Parent.Name:find'Damage'and not aD.Parent.Name:find'KillPart'and not aD.Parent.Name:find'Collider'then wait(3)pcall(function()aD.Parent.CFrame=g.Character.HumanoidRootPart.CFrame end)end end)end;for G,H in pairs(l)do if game.PlaceId==H then b.MissionObjects.ChildRemoved:Connect(function(aE)if aE.Name=="MissionStart"then wait(2)b.MissionObjects.WaveStarter.CFrame=g.Character.HumanoidRootPart.CFrame end end)end end;for G,aF in pairs(l)do if game.PlaceId==aF then b.ChildAdded:Connect(function(aG)if aG.Name=='RaidChestGold'then b.RaidChestGold.ChestBase.CFrame=g.Character.HumanoidRootPart.CFrame end end)b.ChildAdded:Connect(function(aH)if aH.Name=='RaidChestSilver'then b.RaidChestSilver.ChestBase.CFrame=g.Character.HumanoidRootPart.CFrame end end)b.ChildAdded:Connect(function(aI)if aI.Name=='AtlanticChest'then for G,H in pairs(b:GetChildren'')do if H.ClassName=="Model"and H.Name=="AtlanticChest"then H.ChestBase.CFrame=g.Character.HumanoidRootPart.CFrame end end end end)b.ChildAdded:Connect(function(aJ)if aJ.Name=='VolcanicChestTower'then for G,H in pairs(b:GetChildren'')do if H.ClassName=="Model"and H.Name=="VolcanicChestTower"then H.ChestBase.CFrame=g.Character.HumanoidRootPart.CFrame end end end end)end end;if getconnections then for al=1,#getconnections(g.Idled)do getconnections(g.Idled)[al]:Disable()end else g.Idled:Connect(function()VirtualUser:Button2Down(Vector2.new(0,0),CurrentCamera.CFrame)wait(1)VirtualUser:Button2Up(Vector2.new(0,0),CurrentCamera.CFrame)end)end;g.CharacterAdded:connect(function()task.wait(1/5)local af=Instance.new'BodyVelocity'af.Velocity=Vector3.new(0,0,0)af.Parent=g.Character:WaitForChild'HumanoidRootPart'end)local aK=g["PlayerGui"]["Chat"]:FindFirstChildWhichIsA'Frame'aK.Active=true;aK.Draggable=true;g.CameraMaxZoomDistance=50;for G,H in pairs(l)do if game.PlaceId==H then a.PurchasePrompt.ProductPurchaseContainer.Animator.ChildAdded:Connect(function()pcall(function()a.PurchasePrompt.ProductPurchaseContainer.Animator.Prompt.Visible=false end)end)end end;for G,H in pairs(b:GetDescendants'')do if H:IsA'BasePart'and not H.Parent:FindFirstChild'Humanoid'then H.Material=Enum.Material.SmoothPlastic;if H:IsA'Texture'then task.defer(H.Destroy,H)end end end;b.DescendantAdded:Connect(function(aL)if aL:IsA'BasePart'and not aL.Parent:FindFirstChild'Humanoid'then aL.Material=Enum.Material.SmoothPlastic;if aL:IsA'Texture'then task.defer(aL.Destroy,aL)end end end)game.NetworkClient.ChildRemoved:Connect(function()game:GetService'GuiService':ClearError()d:SetCore("SendNotification",{Title="Kicked by serverside",Duration=math.huge,Text="Frequncy exceed server limit"})end)if t.Toggleska then a2:SetState(true)end;if p~='MageOfLight'then a4:SetState(false)end