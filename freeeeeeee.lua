if game.PlaceId ~= 10449761463 then

	if game.placeId ~= 130818724007978 then

		if game.placeId == 131048399685555 then
		else
		else
			local v1 = Instance.new("ScreenGui")
			local v2 = Instance.new("Frame")
			local v3 = Instance.new("TextLabel")
			local v4 = Instance.new("TextButton")
			local v5 = Instance.new("TextButton")
			local v6 = Instance.new("TextButton")
			local v7 = Instance.new("TextButton")
			local v8 = Instance.new("ImageButton")
			local v9 = Instance.new("Frame")
			local v10 = Instance.new("TextBox")
			local v11 = Instance.new("TextBox")
			local v12 = Instance.new("TextBox")
			local v13 = Instance.new("UICorner")
			local v14 = Instance.new("TextLabel")
			local v15 = Instance.new("TextLabel")
			local v16 = Instance.new("TextButton")
			task.wait(0.9)
			local v17 = game:GetService("StarterGui")
			v17:SetCore("SendNotification", {
				Title = "Note",
				Text = "Remember to setup the script before using (or default setup)",
				Duration = 3,
			})

			function Callback(a)
				if a == "Yes" then
					local v18 = game:GetService("Players")
					local v19 = game:GetService("RunService")
					local v20 = game.Players.LocalPlayer:GetMouse()
					local v21 = game:GetService("Players")
					local v22 = v21.LocalPlayer:GetMouse()
					local v23 = getgenv()
					v23.Key = "c"

					function FindNearestEnemy()
						local v24 = game:GetService("GuiService")
						v24 = v24:GetScreenResolution()
						local v25 = game:GetService("GuiService")
						v25 = v25:GetScreenResolution()
						local v26 = Vector2.new(v24.X / 2, v25.Y / 2)
						v25 = game:GetService("Players")
						local v24, v25, v27 = ipairs(v25:GetPlayers())

						while true do

							if v28 ~= _u0 then

								if not v28.Character then
									local v29 = v28.Character:FindFirstChild("HumanoidRootPart")

									if not v29 then

										if 0 < v28.Character.Humanoid.Health then
											v29 = game:GetService("Workspace")
											local v29, v30 = v29.CurrentCamera:WorldToViewportPoint(v28.Character.HumanoidRootPart.Position)

											if not v30 then
												local v31 = Vector2.new(v29.X, v29.Y)

												if (v26 - v31).Magnitude < math.huge then
												end

											end

										end

									end

								end

							end

							for v32, v28 in v24, v25, v27 do
							end

							v24 = game:GetService("Workspace")
							v24 = v24:FindFirstChild("Live")

							if not v24 then
								v25 = v24:FindFirstChild("Weakest Dummy")

								if not v25 then
									v27 = v25:FindFirstChild("HumanoidRootPart")

									if not v27 then
										v27 = game:GetService("Workspace")
										local v27, v32 = v27.CurrentCamera:WorldToViewportPoint(v25.HumanoidRootPart.Position)

										if not v32 then
											v28 = Vector2.new(v27.X, v27.Y)

											if (v26 - v28).Magnitude < (v26 - v31).Magnitude then
											end

										end

									end

								end

							end

							return v25.HumanoidRootPart
					end

					v19.Heartbeat:Connect(function()
						if _u0 == true then

							if not _u1 then
								local v33 = CFrame.new(workspace.CurrentCamera.CFrame.p, _u1.Position + _u1.Velocity * _u2)
								workspace.CurrentCamera.CFrame = v33
							end

						end
					end)
					v22.KeyDown:Connect(function(a)
						local v34 = getgenv()

						if a == v34.Key then
							_u0 = not _u0

							if not _u0 then
								v34 = FindNearestEnemy()
								_u1 = v34
								_u2 = true
							else

								if _u1 ~= nil then
									_u1 = nil
									_u2 = false
								end

							end

						end
					end)
					local v35 = Instance.new("ScreenGui")
					v35.Name = "RandomParentName"
					v35.Parent = game.CoreGui
					local v36 = Instance.new("Frame")
					local v37 = Instance.new("UICorner")
					local v38 = Instance.new("TextButton")
					local v39 = Instance.new("UICorner")
					v36.Parent = v35
					local v40 = Color3.fromRGB(43, 43, 43)
					v36.BackgroundColor3 = v40
					v40 = Color3.fromRGB(0, 0, 0)
					v36.BorderColor3 = v40
					v36.BorderSizePixel = 0
					v40 = UDim2.new(0.133798108, 0, 0.20107238, 0)
					v36.Position = v40
					v40 = UDim2.new(0, 132, 0, 60)
					v36.Size = v40
					v36.Active = true
					v36.Draggable = true
					function()
						local v41 = UDim2.new(0.63, -_u0.AbsoluteSize.X / 2, 0.2, -_u0.AbsoluteSize.Y / 2)
						_u0.Position = v41
					end()
					local v42 = v36:GetPropertyChangedSignal("AbsoluteSize")
					v42:Connect(function()
						local v41 = UDim2.new(0.63, -_u0.AbsoluteSize.X / 2, 0.2, -_u0.AbsoluteSize.Y / 2)
						_u0.Position = v41
					end)
					v37.Parent = v36
					v38.Parent = v36
					v42 = Color3.fromRGB(43, 43, 43)
					v38.BackgroundColor3 = v42
					v38.BackgroundTransparency = 5
					v42 = Color3.fromRGB(0, 0, 0)
					v38.BorderColor3 = v42
					v38.BorderSizePixel = 0
					v42 = UDim2.new(0.13, 0, 0.21971429, 0)
					v38.Position = v42
					v42 = UDim2.new(0, 100, 0, 32)
					v38.Size = v42
					v38.Font = Enum.Font.GothamBold
					v38.Text = "Press to enable Camlock"
					v42 = Color3.fromRGB(255, 255, 255)
					v38.TextColor3 = v42
					v38.TextScaled = true
					v38.TextWrapped = true
					v38.MouseButton1Click:Connect(function()
						_u0 = not _u0

						if _u0 then
							_u1.Text = "Camlock Enabled"
							_u2 = true
							local v43 = FindNearestEnemy()
							_u3 = v43
						else
							_u1.Text = "Camlock Disabled"
							_u2 = false
							_u3 = nil
						end
					end)
					local v44 = game:GetService("StarterGui")
					v44:SetCore("SendNotification", { Title = "Made by notpaki", Text = "Thanks for using Combat Gui", Duration = 2.6 })

					local function v44()
						LoadingScreen:Destroy()
					end

				else

					if a == "No" then
					end
			end

			v17 = Instance.new("BindableFunction")
			v17.OnInvoke = Callback
			local v45 = game:GetService("StarterGui")
			v45:SetCore("SendNotification", {
				Title = "Hey",
				Text = "Do you want to execute Camlock script?",
				Duration = 85,
				Button1 = "Yes",
				Button2 = "No",
				Callback = v17,
			})
			v1.Name = "AutoBlock"
			v1.Parent = game.CoreGui
			v1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			v2.Name = "MainFrame"
			v2.Parent = v1
			v45 = Color3.fromRGB(25, 25, 25)
			v2.BackgroundColor3 = v45
			v2.BorderSizePixel = 0
			v45 = UDim2.new(0, 15, 0, 100)
			v2.Position = v45
			v45 = UDim2.new(0, 250, 0, 140)
			v2.Size = v45
			v2.Active = true
			v2.Draggable = true
			v45 = UDim.new(0, 10)
			v13.CornerRadius = v45
			v13.Parent = v2
			v3.Name = "Title"
			v3.Parent = v2
			v45 = Color3.fromRGB(35, 35, 35)
			v3.BackgroundColor3 = v45
			v3.BorderSizePixel = 0
			v45 = UDim2.new(1, 0, 0, 35)
			v3.Size = v45
			v3.Font = Enum.Font.GothamBold
			v3.Text = "TSB | Combat Gui"
			v45 = Color3.fromRGB(255, 255, 255)
			v3.TextColor3 = v45
			v3.TextSize = 17
			v45 = v13:Clone()
			v45.Parent = v3
			v4.Name = "OpenCloseButton"
			v4.Parent = v3
			v45 = Color3.fromRGB(45, 45, 50)
			v4.BackgroundColor3 = v45
			v4.BorderSizePixel = 0
			v45 = UDim2.new(1, -31.5, 0.005, 0)
			v4.Position = v45
			v45 = UDim2.new(0, 30.6, 0.955, 0)
			v4.Size = v45
			v4.Font = Enum.Font.GothamBold
			v4.Text = "-"
			v45 = Color3.fromRGB(255, 255, 255)
			v4.TextColor3 = v45
			v4.TextSize = 19
			v45 = v13:Clone()
			v45.Parent = v4
			v14.Name = "text"
			v14.Parent = v2
			v14.Text = "Auto Block"
			v14.TextSize = 18
			v45 = UDim2.new(0.5, 0, 0.6, -40)
			v14.Position = v45
			v45 = Color3.fromRGB(80, 80, 80)
			v14.TextColor3 = v45
			v14.Font = Enum.Font.Gotham
			v15.Name = "text2"
			v15.Parent = v2
			v15.Text = "Counter Notifier"
			v15.TextSize = 18
			v45 = UDim2.new(0.5, 0, 0.6, 10)
			v15.Position = v45
			v45 = Color3.fromRGB(80, 80, 80)
			v15.TextColor3 = v45
			v15.Font = Enum.Font.Gotham
			v5.Name = "EnableButton"
			v5.Parent = v2
			v45 = Color3.fromRGB(45, 45, 45)
			v5.BackgroundColor3 = v45
			v5.BorderSizePixel = 0
			v45 = UDim2.new(0.14, 0, 0.6, -30)
			v5.Position = v45
			v45 = UDim2.new(0.7, 0, 0, 33)
			v5.Size = v45
			v5.Font = Enum.Font.GothamBold
			v5.Text = "Press to enable Auto Block"
			v45 = Color3.fromRGB(250, 250, 250)
			v5.TextColor3 = v45
			v5.TextScaled = true
			v45 = v13:Clone()
			v45.Parent = v5
			v6.Name = "EnableButton2"
			v6.Parent = v2
			v45 = Color3.fromRGB(45, 45, 45)
			v6.BackgroundColor3 = v45
			v6.BorderSizePixel = 0
			v45 = UDim2.new(0.14, 0, 0.6, 20)
			v6.Position = v45
			v45 = UDim2.new(0.7, 0, 0, 33)
			v6.Size = v45
			v6.Font = Enum.Font.GothamBold
			v6.Text = "Press to enable Counter Notifier"
			v45 = Color3.fromRGB(250, 250, 250)
			v6.TextColor3 = v45
			v6.TextScaled = true
			v45 = v13:Clone()
			v45.Parent = v6
			v8.Name = "SettingsButton"
			v8.Parent = v2
			v8.BackgroundTransparency = 1
			v45 = UDim2.new(1, -25, 0.8, 0)
			v8.Position = v45
			v45 = UDim2.new(0, 21, 0, 21)
			v8.Size = v45
			v8.Image = "rbxassetid://10734950309"
			v9.Name = "SettingsFrame"
			v9.Parent = v2
			v45 = Color3.fromRGB(25, 25, 25)
			v9.BackgroundColor3 = v45
			v9.BorderSizePixel = 0
			v45 = UDim2.new(1, 5, 0, 126)
			v9.Position = v45
			v45 = UDim2.new(0, 0, 0, 0)
			v9.Size = v45
			v9.Visible = false
			v45 = v13:Clone()
			v45.Parent = v9
			v45 = Instance.new("ImageButton")
			v45.Name = "NewButton"
			v45.Parent = v2
			v45.BackgroundTransparency = 1
			local v46 = UDim2.new(1, -26, 0.6, 0)
			v45.Position = v46
			v46 = UDim2.new(0, 21, 0, 21)
			v45.Size = v46
			v45.Image = "rbxassetid://10734943448"
			v46 = Instance.new("Frame")
			v46.Name = "NewFrame"
			v46.Parent = v2
			local v47 = Color3.fromRGB(25, 25, 25)
			v46.BackgroundColor3 = v47
			v46.BorderSizePixel = 0
			v47 = UDim2.new(1, 5, 0, 90)
			v46.Position = v47
			v47 = UDim2.new(0, 0, 0, 0)
			v46.Size = v47
			v46.Visible = false
			v47 = v13:Clone()
			v47.Parent = v46
			v47 = Instance.new("TextLabel")
			v47.Name = "NL"
			v47.Parent = v46
			local v48 = Color3.fromRGB(25, 25, 25)
			v47.BackgroundColor3 = v48
			v47.BorderSizePixel = 0
			v48 = UDim2.new(0.81, 0, 0.05, 0)
			v47.Position = v48
			v48 = UDim2.new(0.01, 0, 0, 1)
			v47.Size = v48
			v47.Font = Enum.Font.Gotham
			v47.Text = "Main features"
			v48 = Color3.fromRGB(255, 255, 255)
			v47.TextColor3 = v48
			v47.TextSize = 12
			v47.TextScaled = false
			v48 = Instance.new("ImageButton")
			v48.Name = "NewButton1"
			v48.Parent = v2
			v48.BackgroundTransparency = 1
			local v49 = UDim2.new(1, -26, 0.4, 0)
			v48.Position = v49
			v49 = UDim2.new(0, 21, 0, 21)
			v48.Size = v49
			v48.Image = "rbxassetid://10709818399"
			v49 = Instance.new("Frame")
			v49.Name = "NewFrame1"
			v49.Parent = v2
			local v50 = Color3.fromRGB(25, 25, 25)
			v49.BackgroundColor3 = v50
			v49.BorderSizePixel = 0
			v50 = UDim2.new(1, 5, 0, 62)
			v49.Position = v50
			v50 = UDim2.new(0, 0, 0, 0)
			v49.Size = v50
			v49.Visible = false
			v50 = v13:Clone()
			v50.Parent = v49
			v50 = Instance.new("TextLabel")
			v50.Name = "NL1"
			v50.Parent = v49
			local v51 = Color3.fromRGB(25, 25, 25)
			v50.BackgroundColor3 = v51
			v50.BorderSizePixel = 0
			v51 = UDim2.new(0.45, 0, 0.08, 0)
			v50.Position = v51
			v51 = UDim2.new(0.01, 0, 0, 1)
			v50.Size = v51
			v50.Font = Enum.Font.Gotham
			v51 = Color3.fromRGB(255, 255, 255)
			v50.TextColor3 = v51
			v50.TextSize = 14
			v50.TextScaled = false
			v10.Name = "TextBox1"
			v10.Parent = v9
			v51 = Color3.fromRGB(45, 45, 45)
			v10.BackgroundColor3 = v51
			v10.BorderSizePixel = 0
			v51 = UDim2.new(0.05, 0, 0.06, 0)
			v10.Position = v51
			v51 = UDim2.new(0.9, 0, 0, 25)
			v10.Size = v51
			v10.Font = Enum.Font.Gotham
			v10.PlaceholderText = "Auto Block (Close range moves)"
			v10.Text = ""
			v51 = Color3.fromRGB(255, 255, 255)
			v10.TextColor3 = v51
			v10.TextScaled = true
			v51 = v13:Clone()
			v51.Parent = v10
			v11.Name = "TextBox2"
			v11.Parent = v9
			v51 = Color3.fromRGB(45, 45, 45)
			v11.BackgroundColor3 = v51
			v11.BorderSizePixel = 0
			v51 = UDim2.new(0.05, 0, 0.31, 0)
			v11.Position = v51
			v51 = UDim2.new(0.9, 0, 0, 25)
			v11.Size = v51
			v11.Font = Enum.Font.Gotham
			v11.PlaceholderText = "Auto Block (Long range moves)"
			v11.Text = ""
			v51 = Color3.fromRGB(255, 255, 255)
			v11.TextColor3 = v51
			v11.TextScaled = true
			v51 = v13:Clone()
			v51.Parent = v11
			v12.Name = "TextBox3"
			v12.Parent = v9
			v51 = Color3.fromRGB(45, 45, 45)
			v12.BackgroundColor3 = v51
			v12.BorderSizePixel = 0
			v51 = UDim2.new(0.05, 0, 0.56, 0)
			v12.Position = v51
			v51 = UDim2.new(0.9, 0, 0, 25)
			v12.Size = v51
			v12.Font = Enum.Font.Gotham
			v12.PlaceholderText = "Counter Notifier range"
			v12.Text = ""
			v51 = Color3.fromRGB(255, 255, 255)
			v12.TextColor3 = v51
			v12.TextScaled = true
			v51 = v13:Clone()
			v51.Parent = v12
			v16.Name = "sb"
			v16.Parent = v9
			v51 = Color3.fromRGB(48, 48, 48)
			v16.BackgroundColor3 = v51
			v16.BorderSizePixel = 0
			v51 = UDim2.new(0.237, 0, 0.81, 0)
			v16.Position = v51
			v51 = UDim2.new(0.5, 0, 0, 25)
			v16.Size = v51
			v16.Font = Enum.Font.Gotham
			v16.Text = "Setup default settings"
			v51 = Color3.fromRGB(255, 255, 255)
			v16.TextColor3 = v51
			v16.TextSize = 14
			v16.TextScaled = true
			v51 = v13:Clone()
			v51.Parent = v16
			v51 = Instance.new("TextButton")
			v51.Name = "ToggleButton"
			v51.Parent = v46
			local v52 = Color3.fromRGB(48, 48, 48)
			v51.BackgroundColor3 = v52
			v51.BorderSizePixel = 0
			v52 = UDim2.new(0.12, 0, 0.45, 0)
			v51.Position = v52
			v52 = UDim2.new(0.075, 0, 0, 23)
			v51.Size = v52
			v51.Text = ""
			v51.TextScaled = true
			v52 = v13:Clone()
			v52.Parent = v51
			v52 = Instance.new("TextLabel")
			v52.Name = "Label"
			v52.Parent = v46
			local v53 = Color3.fromRGB(25, 25, 25)
			v52.BackgroundColor3 = v53
			v52.BorderSizePixel = 0
			v53 = UDim2.new(0.155, 0, 0.38, 0)
			v52.Position = v53
			v53 = UDim2.new(0.01, 0, 0, 1)
			v52.Size = v53
			v52.Font = Enum.Font.Gotham
			v52.Text = "M1 after blocking"
			v53 = Color3.fromRGB(255, 255, 255)
			v52.TextColor3 = v53
			v52.TextSize = 9
			v53 = Instance.new("TextButton")
			v53.Name = "ToggleButton"
			v53.Parent = v46
			local v54 = Color3.fromRGB(48, 48, 48)
			v53.BackgroundColor3 = v54
			v53.BorderSizePixel = 0
			v54 = UDim2.new(0.12, 0, 0.181, 0)
			v53.Position = v54
			v54 = UDim2.new(0.075, 0, 0, 23)
			v53.Size = v54
			v53.Text = ""
			v53.TextScaled = true
			v54 = v13:Clone()
			v54.Parent = v53
			v54 = Instance.new("TextButton")
			v54.Name = "LBut"
			v54.Parent = v46
			local v55 = Color3.fromRGB(48, 48, 48)
			v54.BackgroundColor3 = v55
			v54.BorderSizePixel = 0
			v55 = UDim2.new(0.3, 0, 0.181, 0)
			v54.Position = v55
			v55 = UDim2.new(0.075, 0, 0, 23)
			v54.Size = v55
			v54.Text = ""
			v54.TextScaled = true
			v55 = v13:Clone()
			v55.Parent = v54
			v55 = Instance.new("TextBox")
			v55.Name = "TextBox4"
			v55.Parent = v46
			local v56 = Color3.fromRGB(45, 45, 45)
			v55.BackgroundColor3 = v56
			v55.BorderSizePixel = 0
			v56 = UDim2.new(0.42, 0, 0.19, 0)
			v55.Position = v56
			v56 = UDim2.new(0.25, 0, 0, 19)
			v55.Size = v56
			v55.Font = Enum.Font.Gotham
			v55.PlaceholderText = "Message after baiting"
			v55.Text = "Simon says counter"
			v56 = Color3.fromRGB(255, 255, 255)
			v55.TextColor3 = v56
			v55.TextScaled = true
			v56 = v13:Clone()
			v56.Parent = v55
			v56 = Instance.new("TextLabel")
			v56.Name = "Label"
			v56.Parent = v46
			local v57 = Color3.fromRGB(25, 25, 25)
			v56.BackgroundColor3 = v57
			v56.BorderSizePixel = 0
			v57 = UDim2.new(0.145, 0, 0.115, 0)
			v56.Position = v57
			v57 = UDim2.new(0.01, 0, 0, 1)
			v56.Size = v57
			v56.Font = Enum.Font.Gotham
			v56.Text = "Counter bait"
			v57 = Color3.fromRGB(255, 255, 255)
			v56.TextColor3 = v57
			v56.TextSize = 10
			v56.TextScaled = false
			v57 = Instance.new("TextLabel")
			v57.Name = "L"
			v57.Parent = v46
			local v58 = Color3.fromRGB(25, 25, 25)
			v57.BackgroundColor3 = v58
			v57.BorderSizePixel = 0
			v58 = UDim2.new(0.348, 0, 0.115, 0)
			v57.Position = v58
			v58 = UDim2.new(0.01, 0, 0, 1)
			v57.Size = v58
			v57.Font = Enum.Font.Gotham
			v57.Text = "L emote"
			v58 = Color3.fromRGB(255, 255, 255)
			v57.TextColor3 = v58
			v57.TextSize = 10
			v57.TextScaled = false
			v58 = Instance.new("TextButton")
			v58.Name = "ToggleButton2"
			v58.Parent = v46
			local v59 = Color3.fromRGB(192, 192, 192)
			v58.BackgroundColor3 = v59
			v58.BorderSizePixel = 0
			v59 = UDim2.new(0.12, 0, 0.745, 0)
			v58.Position = v59
			v59 = UDim2.new(0.075, 0, 0, 23)
			v58.Size = v59
			v58.Text = ""
			v58.TextScaled = true
			v59 = v13:Clone()
			v59.Parent = v58
			v59 = Instance.new("TextLabel")
			v59.Name = "Label"
			v59.Parent = v46
			local v60 = Color3.fromRGB(25, 25, 25)
			v59.BackgroundColor3 = v60
			v59.BorderSizePixel = 0
			v60 = UDim2.new(0.14, 0, 0.66, 0)
			v59.Position = v60
			v60 = UDim2.new(0.07, 0, 0, 1)
			v59.Size = v60
			v59.Font = Enum.Font.Gotham
			v59.Text = "Death counter notifer"
			v60 = Color3.fromRGB(255, 255, 255)
			v59.TextColor3 = v60
			v59.TextSize = 9
			v59.TextScaled = false
			v60 = Instance.new("TextLabel")
			v60.Name = "Label"
			v60.Parent = v46
			local v61 = Color3.fromRGB(25, 25, 25)
			v60.BackgroundColor3 = v61
			v60.BorderSizePixel = 0
			v61 = UDim2.new(0.4, 0, 0.388, 0)
			v60.Position = v61
			v61 = UDim2.new(0.07, 0, 0, 1)
			v60.Size = v61
			v60.Font = Enum.Font.Gotham
			v60.Text = "Auto Counter M1"
			v61 = Color3.fromRGB(255, 255, 255)
			v60.TextColor3 = v61
			v60.TextSize = 9
			v60.TextScaled = false
			v61 = Instance.new("TextButton")
			v61.Name = "AutoCounter"
			v61.Parent = v46
			local v62 = Color3.fromRGB(48, 48, 48)
			v61.BackgroundColor3 = v62
			v61.BorderSizePixel = 0
			v62 = UDim2.new(0.4, 0, 0.45, 0)
			v61.Position = v62
			v62 = UDim2.new(0.075, 0, 0, 23)
			v61.Size = v62
			v61.Text = ""
			v61.TextScaled = true
			v62 = v13:Clone()
			v62.Parent = v61
			v62 = Instance.new("TextButton")
			v62.Parent = v46
			local v63 = Color3.fromRGB(48, 48, 48)
			v62.BackgroundColor3 = v63
			v62.BorderSizePixel = 0
			v63 = UDim2.new(0.64, 0, 0.45, 0)
			v62.Position = v63
			v63 = UDim2.new(0.075, 0, 0, 23)
			v62.Size = v63
			v62.Text = ""
			v63 = v13:Clone()
			v63.Parent = v62
			v63 = Instance.new("TextLabel")
			v63.Parent = v46
			local v64 = Color3.fromRGB(25, 25, 25)
			v63.BackgroundColor3 = v64
			v63.BorderSizePixel = 0
			v64 = UDim2.new(0.64, 0, 0.388, 0)
			v63.Position = v64
			v64 = UDim2.new(0.07, 0, 0, 1)
			v63.Size = v64
			v63.Font = Enum.Font.Gotham
			v63.Text = "M1 Reach"
			v64 = Color3.fromRGB(255, 255, 255)
			v63.TextColor3 = v64
			v63.TextSize = 9
			v64 = Instance.new("TextButton")
			v64.Parent = v46
			local v65 = Color3.fromRGB(48, 48, 48)
			v64.BackgroundColor3 = v65
			v64.BorderSizePixel = 0
			v65 = UDim2.new(0.43, 0, 0.745, 0)
			v64.Position = v65
			v65 = UDim2.new(0.075, 0, 0, 23)
			v64.Size = v65
			v64.Text = ""
			v65 = v13:Clone()
			v65.Parent = v64
			v65 = Instance.new("TextLabel")
			v65.Parent = v46
			local v66 = Color3.fromRGB(25, 25, 25)
			v65.BackgroundColor3 = v66
			v65.BorderSizePixel = 0
			v66 = UDim2.new(0.44, 0, 0.67, 0)
			v65.Position = v66
			v66 = UDim2.new(0.07, 0, 0, 1)
			v65.Size = v66
			v65.Font = Enum.Font.Gotham
			v65.Text = "M1 reset [Endlag]"
			v66 = Color3.fromRGB(255, 255, 255)
			v65.TextColor3 = v66
			v65.TextSize = 9
			v65.TextScaled = false
			v66 = Instance.new("TextButton")
			v66.Parent = v46
			local v67 = Color3.fromRGB(48, 48, 48)
			v66.BackgroundColor3 = v67
			v66.BorderSizePixel = 0
			v67 = UDim2.new(0.732, 0, 0.745, 0)
			v66.Position = v67
			v67 = UDim2.new(0.075, 0, 0, 23)
			v66.Size = v67
			v66.Text = ""
			v67 = v13:Clone()
			v67.Parent = v66
			v67 = Instance.new("TextLabel")
			v67.Parent = v46
			local v68 = Color3.fromRGB(25, 25, 25)
			v67.BackgroundColor3 = v68
			v67.BorderSizePixel = 0
			v68 = UDim2.new(0.75, 0, 0.67, 0)
			v67.Position = v68
			v68 = UDim2.new(0.07, 0, 0, 1)
			v67.Size = v68
			v67.Font = Enum.Font.Gotham
			v67.Text = "Anti death counter"
			v68 = Color3.fromRGB(255, 255, 255)
			v67.TextColor3 = v68
			v67.TextSize = 9
			v67.TextScaled = false
			v68 = Instance.new("Frame")
			v68.Parent = v49
			local v69 = UDim2.new(0, 1, 0.7, 0)
			v68.Size = v69
			v69 = UDim2.new(0.8, 0, 0.16, 0)
			v68.Position = v69
			v69 = Color3.fromRGB(250, 250, 250)
			v68.BackgroundColor3 = v69
			v68.BorderSizePixel = 0
			v68.BackgroundTransparency = 0.6
			v69 = v13:Clone()
			v69.Parent = v68
			v69 = Instance.new("ImageButton")
			v69.Parent = v49
			v69.BackgroundTransparency = 1
			local v70 = UDim2.new(1, -43.1, 0.25, 0)
			v69.Position = v70
			v70 = UDim2.new(0, 27, 0, 27)
			v69.Size = v70
			v69.Image = "rbxassetid://10734886004"
			v70 = Instance.new("ImageButton")
			v70.Parent = v49
			v70.BackgroundTransparency = 1
			local v71 = UDim2.new(1, -43.1, 0.55, 0)
			v70.Position = v71
			v71 = UDim2.new(0, 28, 0, 28)
			v70.Size = v71
			v70.Image = "rbxassetid://10734950020"
			v71 = Instance.new("TextButton")
			local v72 = Instance.new("UICorner")
			v71.Parent = v49
			local v73 = Color3.fromRGB(48, 48, 48)
			v71.BackgroundColor3 = v73
			v71.BorderSizePixel = 0
			v73 = UDim2.new(0.01, 0, 0.25, 0)
			v71.Position = v73
			v73 = UDim2.new(0.2, 0, 0, 23)
			v71.Size = v73
			v71.Text = "Mountain"
			v73 = Color3.fromRGB(240, 240, 240)
			v71.TextColor3 = v73
			v71.TextScaled = true
			v72.Parent = v71
			v73 = UDim.new(0, 6)
			v72.CornerRadius = v73
			v71.MouseButton1Click:Connect(function()
				local v74 = CFrame.new(-59, 653, -381)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v74
			end)
			v73 = Instance.new("TextButton")
			local v75 = Instance.new("UICorner")
			v73.Parent = v49
			local v76 = Color3.fromRGB(48, 48, 48)
			v73.BackgroundColor3 = v76
			v73.BorderSizePixel = 0
			v76 = UDim2.new(0.31, 0, 0.25, 0)
			v73.Position = v76
			v76 = UDim2.new(0.2, 0, 0, 23)
			v73.Size = v76
			v73.Text = "Death Counter"
			v76 = Color3.fromRGB(240, 240, 240)
			v73.TextColor3 = v76
			v73.TextScaled = true
			v75.Parent = v73
			v76 = UDim.new(0, 6)
			v75.CornerRadius = v76
			v73.MouseButton1Click:Connect(function()
				local v77 = CFrame.new(-66, 29, 20348)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v77
			end)
			v76 = Instance.new("TextButton")
			local v78 = Instance.new("UICorner")
			v76.Parent = v49
			local v79 = Color3.fromRGB(48, 48, 48)
			v76.BackgroundColor3 = v79
			v76.BorderSizePixel = 0
			v79 = UDim2.new(0.59, 0, 0.25, 0)
			v76.Position = v79
			v79 = UDim2.new(0.2, 0, 0, 23)
			v76.Size = v79
			v76.Text = "Atomic"
			v79 = Color3.fromRGB(240, 240, 240)
			v76.TextColor3 = v79
			v76.TextScaled = true
			v78.Parent = v76
			v79 = UDim.new(0, 6)
			v78.CornerRadius = v79
			v76.MouseButton1Click:Connect(function()
				local v80 = CFrame.new(1070, 133, 23006)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v80
			end)
			v79 = Instance.new("TextButton")
			local v81 = Instance.new("UICorner")
			v79.Parent = v49
			local v82 = Color3.fromRGB(48, 48, 48)
			v79.BackgroundColor3 = v82
			v79.BorderSizePixel = 0
			v82 = UDim2.new(0.01, 0, 0.52, 0)
			v79.Position = v82
			v82 = UDim2.new(0.2, 0, 0, 23)
			v79.Size = v82
			v79.Text = "Baseplate"
			v82 = Color3.fromRGB(240, 240, 240)
			v79.TextColor3 = v82
			v79.TextScaled = true
			v81.Parent = v79
			v82 = UDim.new(0, 6)
			v81.CornerRadius = v82
			v79.MouseButton1Click:Connect(function()
				local v83 = CFrame.new(992, 20, 22952)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v83
			end)
			v82 = Instance.new("TextButton")
			local v84 = Instance.new("UICorner")
			v82.Parent = v49
			local v85 = Color3.fromRGB(48, 48, 48)
			v82.BackgroundColor3 = v85
			v82.BorderSizePixel = 0
			v85 = UDim2.new(0.31, 0, 0.52, 0)
			v82.Position = v85
			v85 = UDim2.new(0.2, 0, 0, 23)
			v82.Size = v85
			v82.Text = "Baseplate 2"
			v85 = Color3.fromRGB(240, 240, 240)
			v82.TextColor3 = v85
			v82.TextScaled = true
			v84.Parent = v82
			v85 = UDim.new(0, 6)
			v84.CornerRadius = v85
			v82.MouseButton1Click:Connect(function()
				local v86 = CFrame.new(1065, 406, 22992)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v86
			end)
			v85 = Instance.new("TextButton")
			local v87 = Instance.new("UICorner")
			v85.Parent = v49
			local v88 = Color3.fromRGB(48, 48, 48)
			v85.BackgroundColor3 = v88
			v85.BorderSizePixel = 0
			v88 = UDim2.new(0.59, 0, 0.52, 0)
			v85.Position = v88
			v88 = UDim2.new(0.2, 0, 0, 23)
			v85.Size = v88
			v85.Text = "Middle Map"
			v88 = Color3.fromRGB(240, 240, 240)
			v85.TextColor3 = v88
			v85.TextScaled = true
			v87.Parent = v85
			v88 = UDim.new(0, 6)
			v87.CornerRadius = v88
			v85.MouseButton1Click:Connect(function()
				local v89 = CFrame.new(149, 441, 26)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v89
			end)
			v88 = Instance.new("TextLabel")
			v88.Name = "StunL"
			v88.Parent = v49
			local v90 = Color3.fromRGB(25, 25, 25)
			v88.BackgroundColor3 = v90
			v88.BorderSizePixel = 0
			v90 = UDim2.new(0.06, 0, 0.16, 0)
			v88.Position = v90
			v90 = UDim2.new(0.07, 0, 0, 1)
			v88.Size = v90
			v88.Font = Enum.Font.Gotham
			v88.Text = "No Stun"
			v90 = Color3.fromRGB(255, 255, 255)
			v88.TextColor3 = v90
			v88.TextSize = 10
			v90 = Instance.new("TextButton")
			v90.Name = "Stun"
			v90.Parent = v49
			local v91 = Color3.fromRGB(48, 48, 48)
			v90.BackgroundColor3 = v91
			v90.BorderSizePixel = 0
			v91 = UDim2.new(0.05, 0, 0.25, 0)
			v90.Position = v91
			v91 = UDim2.new(0.075, 0, 0, 23)
			v90.Size = v91
			v90.Text = ""
			v91 = v13:Clone()
			v91.Parent = v90
			v91 = Instance.new("TextButton")
			v91.Name = "Void"
			v91.Parent = v49
			local v92 = Color3.fromRGB(48, 48, 48)
			v91.BackgroundColor3 = v92
			v91.BorderSizePixel = 0
			v92 = UDim2.new(0.25, 0, 0.25, 0)
			v91.Position = v92
			v92 = UDim2.new(0.075, 0, 0, 23)
			v91.Size = v92
			v91.Text = ""
			v92 = v13:Clone()
			v92.Parent = v91
			v92 = Instance.new("TextLabel")
			v92.Parent = v49
			local v93 = Color3.fromRGB(25, 25, 25)
			v92.BackgroundColor3 = v93
			v92.BorderSizePixel = 0
			v93 = UDim2.new(0.25, 0, 0.16, 0)
			v92.Position = v93
			v93 = UDim2.new(0.07, 0, 0, 1)
			v92.Size = v93
			v92.Font = Enum.Font.Gotham
			v92.Text = "No Fatigue"
			v93 = Color3.fromRGB(255, 255, 255)
			v92.TextColor3 = v93
			v92.TextSize = 10
			v93 = Instance.new("TextButton")
			v93.Name = "ak"
			v93.Parent = v49
			local v94 = Color3.fromRGB(48, 48, 48)
			v93.BackgroundColor3 = v94
			v93.BorderSizePixel = 0
			v94 = UDim2.new(0.6, 0, 0.56, 0)
			v93.Position = v94
			v94 = UDim2.new(0.075, 0, 0, 23)
			v93.Size = v94
			v93.Text = ""
			v94 = v13:Clone()
			v94.Parent = v93
			v94 = Instance.new("TextLabel")
			v94.Parent = v49
			local v95 = Color3.fromRGB(25, 25, 25)
			v94.BackgroundColor3 = v95
			v94.BorderSizePixel = 0
			v95 = UDim2.new(0.6, 0, 0.475, 0)
			v94.Position = v95
			v95 = UDim2.new(0.07, 0, 0, 1)
			v94.Size = v95
			v94.Font = Enum.Font.Gotham
			v94.Text = "Anti Knockback"
			v95 = Color3.fromRGB(255, 255, 255)
			v94.TextColor3 = v95
			v94.TextSize = 10
			v95 = Instance.new("TextButton")
			v95.Name = "Sh"
			v95.Parent = v49
			local v96 = Color3.fromRGB(48, 48, 48)
			v95.BackgroundColor3 = v96
			v95.BorderSizePixel = 0
			v96 = UDim2.new(0.45, 0, 0.25, 0)
			v95.Position = v96
			v96 = UDim2.new(0.075, 0, 0, 23)
			v95.Size = v96
			v95.Text = ""
			v96 = v13:Clone()
			v96.Parent = v95
			v96 = Instance.new("TextLabel")
			v96.Parent = v49
			local v97 = Color3.fromRGB(25, 25, 25)
			v96.BackgroundColor3 = v97
			v96.BorderSizePixel = 0
			v97 = UDim2.new(0.46, 0, 0.165, 0)
			v96.Position = v97
			v97 = UDim2.new(0.07, 0, 0, 1)
			v96.Size = v97
			v96.Font = Enum.Font.Gotham
			v96.Text = "Show CD info"
			v97 = Color3.fromRGB(255, 255, 255)
			v96.TextColor3 = v97
			v96.TextSize = 10
			v97 = Instance.new("TextButton")
			local v98 = Instance.new("UICorner")
			v97.Parent = v49
			local v99 = Color3.fromRGB(48, 48, 48)
			v97.BackgroundColor3 = v99
			v97.BorderSizePixel = 0
			v99 = UDim2.new(0.28, 0, 0.47, 0)
			v97.Position = v99
			v99 = UDim2.new(0.2, 0, 0, 24)
			v97.Size = v99
			v97.Text = "Void Script"
			v99 = Color3.fromRGB(240, 240, 240)
			v97.TextColor3 = v99
			v97.TextScaled = true
			v98.Parent = v97
			v99 = UDim.new(0, 6)
			v98.CornerRadius = v99
			v97.MouseButton1Click:Connect(function()
				local v101 = loadstring(game:HttpGet("https://pastefy.app/zV3ruT7F/raw"))
				v101()
			end)
			v99 = Instance.new("TextButton")
			local v102 = Instance.new("UICorner")
			v99.Parent = v49
			local v103 = Color3.fromRGB(48, 48, 48)
			v99.BackgroundColor3 = v103
			v99.BorderSizePixel = 0
			v103 = UDim2.new(0.03, 0, 0.47, 0)
			v99.Position = v103
			v103 = UDim2.new(0.2, 0, 0, 23)
			v99.Size = v103
			v99.Text = "Anti Lag"
			v103 = Color3.fromRGB(240, 240, 240)
			v99.TextColor3 = v103
			v99.TextSize = 10
			v102.Parent = v99
			v103 = UDim.new(0, 6)
			v102.CornerRadius = v103
			v99.MouseButton1Click:Connect(function()
				local v104 = workspace:FindFirstChild("Map")

				if not v104 then
					local v105, v106, v107 = ipairs({ "Grass", "Trees", "GrassTop", "GrassBottom", "Benchs" })

					while true do
						local v108 = v104:FindFirstChild("GrassTop")

						if not v108 then
							v108:Destroy()
						end

						for v109, v110 in v105, v106, v107 do
						end

					end

					v105 = game:GetService("ReplicatedStorage")
					local v106, v107, v109 = ipairs({ "Cutscenes", "CameraShaker", "Emotes", "Resources" })

					while true do
						local v111 = v105:FindFirstChild("Emotes")

						if not v111 then
							local v113, v112, v114 = ipairs(v111:GetChildren())

							while true do
								v115:Destroy()

								for v116, v115 in v113, v112, v114 do
								end

							end

							for v110, v108 in v106, v107, v109 do
							end

							v106 = v105:FindFirstChild("library")

							if not v106 then
								v107 = v106:FindFirstChild("CameraShaker")

								if not v107 then
									v107:Destroy()
								end

							end

							v109 = workspace:FindFirstChild("Live")

							if not v109 then
								v110 = v109:FindFirstChild(game.Players.LocalPlayer.Name)

								if not v110 then
									task.spawn(function()
										while true do
											local v117, v118, v119 = ipairs({ "Left Arm", "Right Arm" })

											while true do
												local v121 = _u0:FindFirstChild(v120)

												if not v121 then
													v121.Transparency = 0
												end

												for v122, v120 in v117, v118, v119 do
												end

												task.wait(0.8)
											end
									end)
								end

							end

							v110 = game:GetService("Lighting")
							local v108, v111, v113 = ipairs({ "Atmosphere", "Clear Blue Sky" })

							while true do
								v116 = v110:FindFirstChild(v114)

								if not v116 then
									v116:Destroy()
								end

								for v112, v114 in v108, v111, v113 do
								end

								v108 = workspace.Terrain:FindFirstChild("Clouds")

								if not v108 then
									v108:Destroy()
								end
			end)
			v68.Visible = true
			v71.Visible = false
			v73.Visible = false
			v76.Visible = false
			v79.Visible = false
			v82.Visible = false
			v85.Visible = false
			v90.Visible = false
			v91.Visible = false
			v50.Visible = true
			v92.Visible = false
			v97.Visible = false
			v99.Visible = false
			v96.Visible = false
			v95.Visible = false
			v94.Visible = false
			v93.Visible = false
			v88.Visible = false
			v50.Text = "Other features"
			v69.MouseButton1Click:Connect(function()
				_u0 = 1
				_u1.Visible = true
				_u2.Visible = true
				_u3.Visible = true
				_u4.Visible = true
				_u5.Visible = true
				_u6.Visible = true
				_u7.Visible = false
				_u8.Visible = false
				_u9.Visible = false
				_u10.Visible = false
				_u11.Visible = false
				_u12.Visible = false
				_u13.Visible = false
				_u14.Visible = false
				_u15.Visible = false
				_u16.Visible = false
				_u17.Text = "Teleport"
			end)
			v70.MouseButton1Click:Connect(function()
				_u0 = 2
				_u1.Visible = false
				_u2.Visible = false
				_u3.Visible = false
				_u4.Visible = false
				_u5.Visible = false
				_u6.Visible = false
				_u7.Visible = true
				_u8.Visible = true
				_u9.Visible = true
				_u10.Visible = true
				_u11.Visible = true
				_u12.Visible = true
				_u13.Visible = true
				_u14.Visible = true
				_u15.Visible = true
				_u16.Visible = true
				_u17.Text = "Misc"
			end)
			v4.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v123 = _u1:TweenSize(250, 0, 140)
					_u1:TweenSize(_u1, v123, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.3, true)
					wait(0.29)
					_u2.Visible = true
					_u3.Visible = true
					_u4.Visible = true
					_u5.Visible = true
					_u6.Visible = true
					_u7.Visible = true
					_u8.Visible = true
					_u9.Visible = true
				else
					v123 = _u1:TweenSize(250, 0, 35)
					_u1:TweenSize(_u1, v123, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.3, true)
					wait(0.05)
					_u2.Visible = false
					_u3.Visible = false
					_u4.Visible = false
					_u5.Visible = false
					_u6.Visible = false
					_u7.Visible = false
					_u8.Visible = false
					_u9.Visible = false

					if not _u10.Visible then
						_u11.Visible = false
						_u12.Visible = false
						_u13.Visible = false
						_u14.Visible = false
						v123 = _u10:TweenSize(0, 0, 0)
						_u10:TweenSize(_u10, v123, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					if not _u15.Visible then
						_u16.Visible = false
						_u17.Visible = false
						_u18.Visible = false
						_u19.Visible = false
						_u20.Visible = false
						_u21.Visible = false
						_u22.Visible = false
						_u23.Visible = false
						_u24.Visible = false
						_u25.Visible = false
						_u26.Visible = false
						_u27.Visible = false
						_u28.Visible = false
						_u29.Visible = false
						_u30.Visible = false
						_u31.Visible = false
						_u32.Visible = false
						_u33.Visible = false
						v123 = _u15:TweenSize(0, 0, 0)
						_u15:TweenSize(_u15, v123, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					if not _u34.Visible then
						_u35.Visible = false
						_u36.Visible = false
						_u37.Visible = false
						_u38.Visible = false
						_u39.Visible = false
						_u40.Visible = false
						_u41.Visible = false
						_u42.Visible = false
						_u43.Visible = false
						_u44.Visible = false
						_u45.Visible = false
						_u46.Visible = false
						_u47.Visible = false
						_u48.Visible = false
						_u49.Visible = false
						_u50.Visible = false
						_u51.Visible = false
						_u52.Visible = false
						_u53.Visible = false
						_u54.Visible = false
						v123 = _u34:TweenSize(0, 0, 0)
						_u34:TweenSize(_u34, v123, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

				end

				if not _u0 then

					if "-" then
					else
					end

				end

				_u55.Text = "+"
			end)
			v8.MouseButton1Click:Connect(function()
				if not _u0.Visible then
					_u1.Visible = false
					_u2.Visible = false
					_u3.Visible = false
					_u4.Visible = false
					local v124 = _u0:TweenSize(0, 0, 0)
					_u0:TweenSize(_u0, v124, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
				else

					if not _u5.Visible then
						_u6.Visible = false
						_u7.Visible = false
						_u8.Visible = false
						_u9.Visible = false
						_u10.Visible = false
						_u11.Visible = false
						_u12.Visible = false
						_u13.Visible = false
						_u14.Visible = false
						_u15.Visible = false
						_u16.Visible = false
						_u17.Visible = false
						_u18.Visible = false
						_u19.Visible = false
						_u20.Visible = false
						_u21.Visible = false
						_u22.Visible = false
						_u23.Visible = false
						v124 = _u5:TweenSize(0, 0, 0)
						_u5:TweenSize(_u5, v124, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					if not _u24.Visible then
						_u25.Visible = false
						_u26.Visible = false
						_u27.Visible = false
						_u28.Visible = false
						_u29.Visible = false
						_u30.Visible = false
						_u31.Visible = false
						_u32.Visible = false
						_u33.Visible = false
						_u34.Visible = false
						_u35.Visible = false
						_u36.Visible = false
						_u37.Visible = false
						_u38.Visible = false
						_u39.Visible = false
						_u40.Visible = false
						_u41.Visible = false
						_u42.Visible = false
						_u43.Visible = false
						_u44.Visible = false
						v124 = _u24:TweenSize(0, 0, 0)
						_u24:TweenSize(_u24, v124, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					_u0.Visible = true
					v124 = _u0:TweenSize(270, 0, 145)
					_u0:TweenSize(_u0, v124, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function()
						_u0.Visible = true
						_u1.Visible = true
						_u2.Visible = true
						_u3.Visible = true
					end)
				end
			end)
			v45.MouseButton1Click:Connect(function()
				if not _u0.Visible then
					_u1.Visible = false
					_u2.Visible = false
					_u3.Visible = false
					_u4.Visible = false
					_u5.Visible = false
					_u6.Visible = false
					_u7.Visible = false
					_u8.Visible = false
					_u9.Visible = false
					_u10.Visible = false
					_u11.Visible = false
					_u12.Visible = false
					_u13.Visible = false
					_u14.Visible = false
					_u15.Visible = false
					_u16.Visible = false
					_u17.Visible = false
					_u18.Visible = false
					local v125 = _u0:TweenSize(0, 0, 0)
					_u0:TweenSize(_u0, v125, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
				else

					if not _u19.Visible then
						_u20.Visible = false
						_u21.Visible = false
						_u22.Visible = false
						_u23.Visible = false
						v125 = _u19:TweenSize(0, 0, 0)
						_u19:TweenSize(_u19, v125, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					if not _u24.Visible then
						_u25.Visible = false
						_u26.Visible = false
						_u27.Visible = false
						_u28.Visible = false
						_u29.Visible = false
						_u30.Visible = false
						_u31.Visible = false
						_u32.Visible = false
						_u33.Visible = false
						_u34.Visible = false
						_u35.Visible = false
						_u36.Visible = false
						_u37.Visible = false
						_u38.Visible = false
						_u39.Visible = false
						_u40.Visible = false
						_u41.Visible = false
						_u42.Visible = false
						_u43.Visible = false
						_u44.Visible = false
						v125 = _u24:TweenSize(0, 0, 0)
						_u24:TweenSize(_u24, v125, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					_u0.Visible = true
					v125 = _u0:TweenSize(300, 0, 140)
					_u0:TweenSize(_u0, v125, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() end)
					task.wait(0.29)
					_u5.Visible = true
					_u6.Visible = true
					_u7.Visible = true
					_u8.Visible = true
					_u10.Visible = true
					_u9.Visible = true
					_u15.Visible = true
					_u16.Visible = true
					_u17.Visible = true
					_u12.Visible = true
					_u13.Visible = true
					_u11.Visible = true
					_u14.Visible = true
					_u18.Visible = true
					_u1.Visible = true
					_u2.Visible = true
					_u3.Visible = true
					_u4.Visible = true
				end
			end)
			v48.MouseButton1Click:Connect(function()
				if not _u0.Visible then
					_u1.Visible = false
					_u2.Visible = false
					_u3.Visible = false
					_u4.Visible = false
					_u5.Visible = false
					_u6.Visible = false
					_u7.Visible = false
					_u8.Visible = false
					_u9.Visible = false
					_u10.Visible = false
					_u11.Visible = false
					_u12.Visible = false
					_u13.Visible = false
					_u14.Visible = false
					_u15.Visible = false
					_u16.Visible = false
					_u17.Visible = false
					_u18.Visible = false
					_u19.Visible = false
					_u20.Visible = false
					local v126 = _u0:TweenSize(0, 0, 0)
					_u0:TweenSize(_u0, v126, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
				else

					if not _u21.Visible then
						_u22.Visible = false
						_u23.Visible = false
						_u24.Visible = false
						_u25.Visible = false
						v126 = _u21:TweenSize(0, 0, 0)
						_u21:TweenSize(_u21, v126, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end

					if not _u26.Visible then
						_u27.Visible = false
						_u28.Visible = false
						_u29.Visible = false
						_u30.Visible = false
						_u31.Visible = false
						_u32.Visible = false
						_u33.Visible = false
						_u34.Visible = false
						_u35.Visible = false
						_u36.Visible = false
						_u37.Visible = false
						_u38.Visible = false
						_u39.Visible = false
						_u40.Visible = false
						_u41.Visible = false
						_u42.Visible = false
						_u43.Visible = false
						_u44.Visible = false
						v126 = _u26:TweenSize(0, 0, 0)
						_u26:TweenSize(_u26, v126, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() _u0.Visible = false end)
					end



					_u0.Visible = true
					v126 = _u0:TweenSize(300, 0, 140)
					_u0:TweenSize(_u0, v126, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true, function() end)
					task.wait(0.29)
					_u1.Visible = true
					_u2.Visible = true
					_u3.Visible = true
					_u4.Visible = true

					if _u45 == 1 then
						_u5.Visible = true
						_u6.Visible = true
						_u7.Visible = true
						_u8.Visible = true
						_u9.Visible = true
						_u10.Visible = true
					end

					if _u45 == 2 then
						_u11.Visible = true
						_u12.Visible = true
						_u13.Visible = true
						_u14.Visible = true
						_u17.Visible = true
						_u20.Visible = true
						_u18.Visible = true
						_u15.Visible = true
						_u16.Visible = true
						_u19.Visible = true
					end

				end
			end)
			v5.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then

					if "Auto Block Enabled" then
					else
					end

				end

				_u1.Text = "Auto Block Disabled"
			end)
			v6.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then

					if "Counter Notifier Enabled" then
					else
					end

				end

				_u1.Text = "Counter Notifier Disabled"
			end)
			v16.MouseButton1Click:Connect(function()
				_u0.Text = "14"
				_u1.Text = "35"
				_u2.Text = "20"
			end)
			v51.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v127 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v127
				else
					v127 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v127
				end
			end)
			v58.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v128 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v128
				else
					v128 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v128
				end
			end)
			v53.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v129 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v129
				else
					v129 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v129
				end
			end)
			v54.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v130 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v130
				else
					v130 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v130
				end
			end)
			v61.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v131 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v131
				else
					v131 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v131
				end
			end)
			v90.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v132 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v132
				else
					v132 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v132
				end
			end)
			v91.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v133 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v133
				else
					v133 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v133
				end
			end)
			v93.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v134 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v134
				else
					v134 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v134
				end
			end)
			task.spawn(function()
				while true do
					local v135 = game:GetService("Players")
					local v136 = workspace:FindFirstChild("Live")

					if not v136 then

						if not _u0 then
							local v138, v137, v139 = pairs(v135:GetPlayers())

							while true do
								local v141 = v136:FindFirstChild(v140.Name)

								if not v141 then
									local v143, v142, v144 = pairs(v141:GetChildren())

									while true do
										local v146 = v145:IsA("Accessory")

										if not v146 then

											if v145.Name ~= "Slowed" then

												if v145.Name ~= "Freeze" then

													if v145.Name ~= "NoDash" then

														if v145.Name ~= "NoBlock" then

															if v145.Name ~= "NoPunch" then

																if v145.Name ~= "NoJump" then

																	if v145.Name == "ComboStun" then
																	else
																	else
																	else
																	else
																	else
																	else
																		v145:Destroy()
																	end

																end

															end

														end

													end

												end

											end

										end

										for v147, v145 in v143, v142, v144 do
										end

									end

									for v148, v140 in v138, v137, v139 do
									end

								end

							end

							if not v136 then

								if not _u1 then
									local v138, v137, v139 = pairs(v135:GetPlayers())

									while true do
										v141 = v136:FindFirstChild(v140.Name)

										if not v141 then
											local v143, v142, v144 = pairs(v141:GetChildren())

											while true do
												v146 = v145:IsA("Accessory")

												if not v146 then

													if v145.Name ~= "Ragdoll" then

														if v145.Name == "RagdollSim" then
														else
															v145:Destroy()
														end

													end

												end

												for v147, v145 in v143, v142, v144 do
												end

											end

											for v148, v140 in v138, v137, v139 do
											end

										end

									end

									task.wait(0.1)
								end
			end)
			function()
				if _u0.Character then
					local v149 = _u0.CharacterAdded:Wait()
				end

				local v150 = v149:WaitForChild("Humanoid")
				local v151 = v150:GetPropertyChangedSignal("JumpPower")
				v151:Connect(function()
					if not _u0 then

						if _u1.JumpPower < 50 then
							_u1.JumpPower = 48.5
						end

					end
				end)
				task.spawn(function()
					while true do

						if not _u0 then

							if not _u1 then

								if _u1.JumpPower < 50 then
									_u1.JumpPower = 48.5
								end

							end

						end

						task.wait(0.1)
					end
				end)
			end()
			game.Players.LocalPlayer.CharacterAdded:Connect(function()
				if _u0.Character then
					local v149 = _u0.CharacterAdded:Wait()
				end

				local v150 = v149:WaitForChild("Humanoid")
				local v151 = v150:GetPropertyChangedSignal("JumpPower")
				v151:Connect(function()
					if not _u0 then

						if _u1.JumpPower < 50 then
							_u1.JumpPower = 48.5
						end

					end
				end)
				task.spawn(function()
					while true do

						if not _u0 then

							if not _u1 then

								if _u1.JumpPower < 50 then
									_u1.JumpPower = 48.5
								end

							end

						end

						task.wait(0.1)
					end
				end)
			end)
			v62.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v152 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v152
				else
					v152 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v152
				end
			end)
			v64.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v153 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v153
				else
					v153 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v153
				end
			end)
			v66.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v154 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v154
				else
					v154 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v154
				end
			end)

			if game.Players.LocalPlayer.Character then
				local v155 = game.Players.LocalPlayer.CharacterAdded:Wait()
			end

			local v156 = v155:WaitForChild("Humanoid")
			local v157 = game:GetService("RunService")

			local function v158(a, b)
				local v160, v159, v161 = ipairs(a:GetPlayingAnimationTracks())

				while true do
					local v163 = table.find(b, v162.Animation.AnimationId)

					if not v163 then
						do return true end
					end

					for v164, v162 in v160, v159, v161 do
					end

					return false
			end

			local function v165()
				local v166 = game:GetService("Players")
				v166.LocalPlayer.Character.Communicate:FireServer(v166.LocalPlayer.Character.Communicate)
			end

			local function v169()
				local v170 = game:GetService("Players")
				v170.LocalPlayer.Character.Communicate:FireServer(v170.LocalPlayer.Character.Communicate)
			end

			local function v173()
				local v174 = game:GetService("Players")
				v174.LocalPlayer.Character.Communicate:FireServer(v174.LocalPlayer.Character.Communicate)
			end

			local function v177()
				local v178 = game:GetService("Players")
				v178.LocalPlayer.Character.Communicate:FireServer(v178.LocalPlayer.Character.Communicate)
			end

			local function v181(a, b)
				local v182 = a.Text:gsub("%s+", "")
				local v183 = tonumber(v182)

				if not v183 then
					do return v183 end
				end

				a.Text = ""
				return b
			end

			local function v184()
				_u0.Text = ""
				_u0.PlaceholderText = "Auto Block (Close range moves)"
				_u1.Text = ""
				_u1.PlaceholderText = "Auto Block (Long range moves)"
				_u2.Text = ""
				_u2.PlaceholderText = "Counter Notifier (and Bait) range"
			end

			v10["FocusLost"]:Connect(function()
				local v185 = _u0(_u1, 14)

				if _u1.Text == "" then
					local v186 = tostring(14)
					_u1.Text = v186
				end
			end)
			v11["FocusLost"]:Connect(function()
				local v187 = _u0(_u1, 35)

				if _u1.Text == "" then
					local v188 = tostring(35)
					_u1.Text = v188
				end
			end)
			v12["FocusLost"]:Connect(function()
				local v189 = _u0(_u1, 20)

				if _u1.Text == "" then
					local v190 = tostring(20)
					_u1.Text = v190
				end
			end)
			"rbxassetid://13294471966"()
			v157["Heartbeat"]:Connect(function()
				local v191 = _u1(_u2, 14)
				_u0 = v191
				v191 = _u1(_u4, 35)
				_u3 = v191
				v191 = _u1(_u6, 20)
				_u5 = v191

				if _u7 then

					if not _u8 then
						_u9()
						_u8 = false
					end

					do return end
				end

				local v192 = game.Players:GetPlayers()
				local v193 = _u10:WaitForChild("Backpack")
				local v194 = game:GetService("VirtualInputManager")

				if not _u10.Character then
					local v195 = _u10.Character:FindFirstChild("HumanoidRootPart")

					if not v195 then
						local v196, v197, v198 = ipairs(v192)

						while true do

							if v199 ~= _u10 then

								if not v199.Character then
									local v200 = v199.Character:FindFirstChild("HumanoidRootPart")

									if not v200 then

										if (_u10.Character.HumanoidRootPart.Position - v199.Character.HumanoidRootPart.Position).Magnitude < _u0 then

											if (_u10.Character.HumanoidRootPart.Position - v199.Character.HumanoidRootPart.Position).Magnitude < math.huge then
											end

										end

										if (_u10.Character.HumanoidRootPart.Position - v199.Character.HumanoidRootPart.Position).Magnitude < _u3 then

											if (_u10.Character.HumanoidRootPart.Position - v199.Character.HumanoidRootPart.Position).Magnitude < math.huge then
											end

										end

									end

								end

							end

							for v201, v199 in v196, v197, v198 do
							end

						end

					end

					local v196, v197, v198 = ipairs(v193:GetChildren())

					while true do
						local v202 = v199:IsA("Tool")

						if not v202 then

							if v199.Name ~= "Prey's Peril" then

								if v199.Name == "Split Second Counter" then
								else
									break
								else
								end

							else

								for v201, v199 in v196, v197, v198 do
								end

							end

						end

						if not v199 then
							v197 = v199.Character:WaitForChild("Humanoid")
							v196 = _u11(v197, _u12)

							if not v196 then

								if _u8 then
									_u8 = true
									_u13()
									task.wait(0.15)
									_u8 = false
									_u9()
								else
								else

									if not v199 then
										v197 = v199.Character:WaitForChild("Humanoid")
										v196 = _u11(v197, _u14)

										if not v196 then

											if _u8 then

												if not _u15 then

													if not v199 then
														v197 = v199.Character:WaitForChild("Humanoid")
														v196 = _u11(v197, _u16)

														if not v196 then

															if not true then
																v196 = v193:FindFirstChild("Prey's Peril")

																if v196 then
																	v196 = v193:FindFirstChild("Split Second Counter")
																end

																if not v196 then
																	v198 = _u10.Character:WaitForChild("Communicate")
																	v198:FireServer(v198)
																end

																_u8 = true
																_u13()
																task.wait({ Tool = v196, Goal = "Console Move" })
																_u8 = false
																_u9()

																if not _u17 then
																	_u18()
																	wait(0.1)
																	_u19()
																else
																	_u8 = true
																	_u13()
																	task.wait({ v198 })
																	_u8 = false
																	_u9()

																	if not _u17 then
																		_u18()
																		wait(0.1)
																		_u19()
																	end

																end

															end

														end

													end

												end

											end

										end

									end

								end

							end

						end
			end)
			local v203 = game:GetService("RunService")

			local function v204(a)
				local v205 = a:WaitForChild("Humanoid")
				local v206 = v205:WaitForChild("Animator")
				_u0.Heartbeat:Connect(function()
					if not _u0 then
						local v208, v207, v209 = ipairs(_u1:GetPlayingAnimationTracks())

						while true do

							if not v210.Animation then
							end

							if v210.Animation.AnimationId ~= "rbxassetid://10480793962" then

								if v210.Animation.AnimationId == "rbxassetid://10480796021" then
								else

									if _u2 < v210.Length - v210.TimePosition then
										task.delay(v210.Length - v210.TimePosition - _u2, function()
											if not _u0.IsPlaying then
												_u0:Stop()
											end
										end)
									end

								end

							end

							for v211, v210 in v208, v207, v209 do
							end

						end
				end)
			end

			if not game.Players.LocalPlayer.Character then
				game(game.Players.LocalPlayer.Character)
			end

			game.Players.LocalPlayer.CharacterAdded:Connect(game)
			local v212 = game:GetService("RunService")
			local v213 = game:GetService("TweenService")

			local function v214()
				if _u0.Character then
					local v215 = _u0.CharacterAdded:Wait()
				end

				local v216 = v215:WaitForChild("HumanoidRootPart")

				local function v217()
					if _u0 then
						do return nil end
					end

					local v219, v218, v220 = pairs(game.Players:GetPlayers())

					while true do

						if v221 ~= _u2 then

							if not v221.Character then
								local v222 = v221.Character:FindFirstChild("HumanoidRootPart")

								if not v222 then

									if (v222.Position - _u3.Position).magnitude <= _u1 then

										if (v222.Position - _u3.Position).magnitude < _u1 then
										end

									end

								end

							end

						end

						for v223, v221 in v219, v218, v220 do
						end

						return v222
				end

				local function v224(a)
					local v225 = TweenInfo.new(0.09, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
					local v226 = _u0:Create(_u1, v225, { CFrame = a })
					v226:Play()
				end

				local function v227(a)
					if _u0 then
						do return end
					end

					local v228 = table.find(_u1, a.Animation.AnimationId)

					if not v228 then
						v228 = _u2()

						if not v228 then
							local v229 = v228.CFrame.LookVector:Dot((_u3.Position - v228.Position).unit)

							if 0 < v229 then

								if 0.3 then
								else
								end

							end

							local v230 = CFrame.lookAt(v228.Position + v228.CFrame.LookVector * -0.3, v228.Position)
							_u4(v230)
						end

					end
				end

				local v231 = v215:WaitForChild("Humanoid")
				v231.AnimationPlayed:Connect(v227)
			end

			game.Players.LocalPlayer.CharacterAdded:Connect("rbxassetid://10469493270")
			"rbxassetid://10469493270"()
			local v232 = game:GetService("Players")
			local v233 = game:GetService("RunService")
			local v234 = game:GetService("StarterGui")

			local function v235(a, b)
				if _u0[a] then
					local v236 = Instance.new("Highlight")
					v236.FillColor = b
					v236 = Color3.fromRGB(255, 255, 255)
					v236.OutlineColor = v236
					v236.FillTransparency = 0.5
					v236.OutlineTransparency = 0
					v236.Parent = a
					_u0[a] = v236
				end
			end

			local function v237(a)
				if not _u0[a] then
					_u0[a]:Destroy()
					_u0[a] = nil
				end
			end

			local function v238(a, b, c)
				_u0:SetCore("SendNotification", { Title = a, Text = b, Duration = c })
			end

			local function v239(a)
				local v241, v240, v242 = pairs(a:GetPlayingAnimationTracks())

				while true do

					if not v243.Animation then

						if v243.Animation.AnimationId ~= _u0 then

							if v243.Animation.AnimationId == _u1 then
							else
								do return v243.Animation.AnimationId end
							end

						end

					end

					for v244, v243 in v241, v240, v242 do
					end

					return nil
			end

			local function v245()
				if _u0.LocalPlayer.Character then
					do return end
				end

				local v246 = _u0.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

				if v246 then
					do return end
				end

				local v248, v247, v249 = pairs(_u0:GetPlayers())

				while true do

					if v250 ~= _u0.LocalPlayer then

						if not v250.Character then
							local v251 = v250.Character:FindFirstChild("HumanoidRootPart")
							local v252 = v250.Character:FindFirstChild("Humanoid")

							if not v251 then

								if not v252 then

									if (v246.Position - v251.Position).Magnitude <= _u1 then
										local v253 = _u2(v252)

										if not v253 then
											local v254 = tick()

											if not _u3[v250] then

												if 5 < v254 - _u3[v250] then
												else
													_u3[v250] = v254

													if v253 == _u4 then
														local v255 = Color3.fromRGB(240, 240, 240)

														if v255 then
														else
															v255 = Color3.fromRGB(0, 0, 254)
														end

													end

													_u5(v250.Character, v255)
													_u6("Notifier", v250.Name .. " used a counter move", 1.2)
													task.delay(17.5, function()
														_u0(_u1)
														_u2("Notifier", _u3.Name .. "'s counter move cooldown has ended", 2)
													end)
												end

											end

										end

									end

								end

							end

						end

					end

					for v256, v250 in v248, v247, v249 do
					end
			end

			local function v257(a, b)
				if _u0[a] then
					local v258 = Instance.new("Highlight")
					v258.FillColor = b
					v258 = Color3.fromRGB(255, 255, 255)
					v258.OutlineColor = v258
					v258.FillTransparency = 0.5
					v258.OutlineTransparency = 0
					v258.Parent = a
					_u0[a] = v258
				end
			end

			local function v259(a)
				if not _u0[a] then
					_u0[a]:Destroy()
					_u0[a] = nil
				end
			end

			local function v260(a, b, c)
				game.StarterGui:SetCore("SendNotification", { Title = a, Text = b, Duration = c })
			end

			local function v261(a, b)
				local v262 = a:FindFirstChild("Head")

				if v262 then
					do return end
				end

				local v263 = Instance.new("BillboardGui")
				v263.Name = "Ded"
				local v264 = UDim2.new(8, 0, 2, 0)
				v263.Size = v264
				v264 = Vector3.new(0, 2, 0)
				v263.StudsOffset = v264
				v263.Adornee = v262
				v263.AlwaysOnTop = true
				v263.MaxDistance = 0
				v263.Parent = v262
				v264 = Instance.new("TextLabel")
				local v265 = UDim2.new(1, 0, 1, 0)
				v264.Size = v265
				v264.BackgroundTransparency = 1
				v264.Text = b
				v265 = Color3.fromRGB(255, 0, 0)
				v264.TextColor3 = v265
				v264.TextScaled = true
				v264.Font = Enum.Font.SourceSansBold
				v264.Parent = v263
			end

			local function v266(a)
				local v267 = a:FindFirstChild("Head")

				if not v267 then
					local v268 = v267:FindFirstChild("Ded")

					if not v268 then
						v268:Destroy()
					end

				end
			end

			local function v269()
				local v270 = workspace:FindFirstChild("Live")

				if not v270 then
					local v272, v271, v273 = ipairs(v270:GetChildren())

					while true do
						local v275 = game.Players:FindFirstChild(v274.Name)

						if not v275 then
							local v276 = v274:FindFirstChildWhichIsA("Accessory", true)

							if not v276 then
								local v276, v277, v278 = ipairs(v274:GetDescendants())

								while true do
									local v280 = v279:IsA("Accessory")

									if not v280 then

										if v279.Name == "Counter" then

											if _u0[v274] then
												_u1(v274)
												_u2("Notifier", v274.Name .. " used Death Counter", 1)
												_u3(v274, "Death Counter")
												task.delay(10.1, function()
													_u0(_u1)
													_u2("Notifier", _u3 .. "'s Death Counter ended", 2)
													_u4(_u1)
												end)
												break
											else
											else

												for v282, v279 in v276, v277, v278 do
												end

											end

										end

									end

								end

							end

							for v283, v274 in v272, v271, v273 do
							end

						end
			end

			local v284 = game:GetService("Players")

			local function v285(a)
				_u0 = a
				local v286 = _u0:WaitForChild("HumanoidRootPart")
				_u1 = v286
				v286 = _u0:WaitForChild("Humanoid")
				_u2 = v286
			end

			if not v284.LocalPlayer.Character then
				"rbxassetid://18464351556"(v284.LocalPlayer.Character)
			end

			v284.LocalPlayer.CharacterAdded:Connect(function(a) _u0(a) end)

			if game.Players.LocalPlayer.Character then
				local v287 = game.Players.LocalPlayer.CharacterAdded:Wait()
			end

			local v288 = Instance.new("Animation")
			v288["AnimationId"] = "rbxassetid://18614546390"
			local v289 = v287:WaitForChild("Humanoid")
			local v290 = v289["FindFirstChildOfClass"]("Animator")
			local v291 = game:GetService("TextChatService")

			local function v292()
				if not _u0 then

					if not _u1 then

						if not _u2 then

							if not _u3 then
								local v294, v293, v295 = pairs(_u4:GetPlayers())

								while true do

									if v296 ~= _u5 then

										if not v296.Character then
											local v297 = v296.Character:FindFirstChild("HumanoidRootPart")

											if not v297 then
												v297 = v296.Character:FindFirstChild("Humanoid")

												if not v297 then

													if (v296.Character.HumanoidRootPart.Position - _u2.Position).Magnitude <= _u6 then
														local v298 = v296.Character.Humanoid:GetPlayingAnimationTracks()
														local v299, v300, v301 = pairs(v298)

														while true do

															if not v302.Animation then
																local v303, v304, v305 = pairs(_u7)

																while true do

																	if v302.Animation.AnimationId == v306 then
																		break
																	else

																		for v307, v306 in v303, v304, v305 do
																		end

																	end

																end

																if true then

																	for v308, v302 in v299, v300, v301 do
																	end

																end

															end

														end

													end

												end

											end

											if not true then
												break
											else

												for v309, v296 in v294, v293, v295 do
												end

											end

											if not true then

												if _u8 then
													_u10.TextChannels.RBXGeneral:SendAsync(_u9.Text)
													_u8 = true
													task.wait(0.2)

													if not _u11 then

														if not _u12 then
															v293 = _u12:LoadAnimation(_u13)
															v293:Play()
															task.wait(1)
															v293:Stop()
														end

													end

												end

											end

											if true then
												_u8 = false
											end

										end

									end

								end

							end
			end

			local function v310(a)
				_u0 = true
				local v311 = Instance.new("ScreenGui")
				v311.Name = "E"
				local v312 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				v311.Parent = v312
				v311.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				v312 = Instance.new("TextLabel")
				v312.Name = "Eva"
				v312.Parent = v311
				local v313 = Color3.fromRGB(255, 255, 255)
				v312.BackgroundColor3 = v313
				v312.BackgroundTransparency = 1
				v313 = UDim2.new(-0.006, 0, 0.809, 0)
				v312.Position = v313
				v313 = UDim2.new(0.102, 0, 0.05, 0)
				v312.Size = v313
				v312.Font = Enum.Font.SourceSansBold
				v312.Text = "Evasive:"
				v313 = Color3.fromRGB(255, 255, 255)
				v312.TextColor3 = v313
				v312.TextScaled = true
				v312.TextSize = 14
				v312.TextTransparency = 0.1
				v312.TextWrapped = true
				v313 = Instance.new("TextLabel")
				v313.Name = "Timer"
				v313.Parent = v311
				v313.BackgroundTransparency = 1
				local v314 = UDim2.new(0.075, 0, 0.811, 0)
				v313.Position = v314
				v314 = UDim2.new(0.05, 0, 0.05, 0)
				v313.Size = v314
				v313.Font = Enum.Font.SourceSansBold
				v313.Text = ""
				v314 = Color3.fromRGB(255, 255, 255)
				v313.TextColor3 = v314
				v313.TextSize = 30
				v313.TextWrapped = true

				for v315 = a, 0, -0.1 do
					local v316 = string.format("%.1f", 0)
					v313.Text = v316
					wait(0.1)
				end

				v313.Text = "0.0"
				v311:Destroy()
				_u0 = false
			end

			local function v317(a)
				local v318 = Instance.new("ScreenGui")
				v318.Name = "d"
				local v319 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				v318.Parent = v319
				v318.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				v319 = Instance.new("TextLabel")
				v319.Name = "Dash"
				v319.Parent = v318
				v319.BackgroundTransparency = 1
				local v320 = UDim2.new(-0.017, 0, 0.866, 0)
				v319.Position = v320
				v320 = UDim2.new(0.102, 0, 0.05, 0)
				v319.Size = v320
				v319.Font = Enum.Font.SourceSansBold
				v319.Text = "Dash:"
				v320 = Color3.fromRGB(255, 255, 255)
				v319.TextColor3 = v320
				v319.TextScaled = true
				v319.TextSize = 14
				v319.TextTransparency = 0.1
				v319.TextWrapped = true
				v320 = Instance.new("TextLabel")
				v320.Name = "Timer"
				v320.Parent = v318
				v320.BackgroundTransparency = 1
				local v321 = UDim2.new(0.05, 0, 0.866, 0)
				v320.Position = v321
				v321 = UDim2.new(0.05, 0, 0.05, 0)
				v320.Size = v321
				v320.Font = Enum.Font.SourceSansBold
				v320.Text = ""
				v321 = Color3.fromRGB(255, 255, 255)
				v320.TextColor3 = v321
				v320.TextSize = 30
				v320.TextWrapped = true

				for v322 = a, 0, -0.1 do
					local v323 = string.format("%.1f", 0)
					v320.Text = v323
					wait(0.1)
				end

				v318:Destroy()
			end

			local function v324(a)
				local v325 = Instance.new("ScreenGui")
				v325.Name = "sd"
				local v326 = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				v325.Parent = v326
				v325.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				v326 = Instance.new("TextLabel")
				v326.Name = "SD"
				v326.Parent = v325
				v326.BackgroundTransparency = 1
				local v327 = UDim2.new(0, 0, 0.921, 0)
				v326.Position = v327
				v327 = UDim2.new(0.102, 0, 0.05, 0)
				v326.Size = v327
				v326.Font = Enum.Font.SourceSansBold
				v326.Text = "SideDash:"
				v327 = Color3.fromRGB(255, 255, 255)
				v326.TextColor3 = v327
				v326.TextScaled = true
				v326.TextSize = 14
				v326.TextTransparency = 0.1
				v326.TextWrapped = true
				v327 = Instance.new("TextLabel")
				v327.Name = "Timer"
				v327.Parent = v325
				v327.BackgroundTransparency = 1
				local v328 = UDim2.new(0.085, 0, 0.921, 0)
				v327.Position = v328
				v328 = UDim2.new(0.05, 0, 0.05, 0)
				v327.Size = v328
				v327.Font = Enum.Font.SourceSansBold
				v327.Text = ""
				v328 = Color3.fromRGB(255, 255, 255)
				v327.TextColor3 = v328
				v327.TextSize = 30
				v327.TextWrapped = true

				for v329 = a, 0, -0.1 do
					local v330 = string.format("%.1f", 0)
					v327.Text = v330
					wait(0.1)
				end

				v325:Destroy()
			end

			local function v331()
				if not _u0 then
					do return end
				end

				if game.Players.LocalPlayer.Character then
					local v332 = game.Players.LocalPlayer.CharacterAdded:Wait()
				end

				local v333 = v332:WaitForChild("Humanoid")
				local v334 = v333:WaitForChild("Animator")
				table.insert(_u1)
				table.insert(_u1)
				local v335 = workspace:WaitForChild("Live")

				local function v336()
					local v337 = _u0:FindFirstChild(_u1.Name)

					if not v337 then
						local v338 = v337:FindFirstChild("RagdollCancel")

						if not v338 then

							if _u2 then
								_u3(30)
							end

						end

					end
				end

				local v339 = task.spawn(function()
					while true do

						if not _u0 then
							_u1()
							task.wait(0.2)
						end

					end

					_u2 = nil
				end)
				_u0 = v339
			end

			v95.MouseButton1Click:Connect(function()
				_u0 = not _u0

				if not _u0 then
					local v340 = Color3.fromRGB(192, 192, 192)
					_u1.BackgroundColor3 = v340
					_u2 = true
					_u3()
				else
					v340 = Color3.fromRGB(48, 48, 48)
					_u1.BackgroundColor3 = v340
					_u2 = false
					local v341, v340, v342 = ipairs(_u4)

					while true do
						48:Disconnect()

						for v343, v344 in v341, v340, v342 do
						end

						_u4 = v341
						_u5 = nil
					end
			end)
			local v345 = game:GetService("Players")
			function()
				if _u0.Character then
					local v346 = _u0.CharacterAdded:Wait()
				end

				local v347 = v346:WaitForChild("Humanoid")
				local v348 = v346:WaitForChild("HumanoidRootPart")

				local function v349()
					task.wait(1.5)
					local v350 = game:GetService("StarterGui")
					v350:SetCore("SendNotification", { Title = "Combat Gui", Text = "Bypassing Death Counter", Duration = 2.5 })
					task.wait(2)
					_u1:SetPrimaryPartCFrame(_u1)
					v350 = Instance.new("Part")
					v350.Parent = workspace.Terrain
					v350.Name = "Void"
					v350.Transparency = 1
					v350.Anchored = true
					local v351 = Vector3.new(2048, 1, 2048)
					v350.Size = v351
					v351 = Vector3.new(0, workspace.FallenPartsDestroyHeight, 0)
					v350.Position = v351
					v350.Locked = true
					v351 = game:GetService("RunService")
					v351.Heartbeat:Connect(function()
						if not _u0 then
							local v352 = _u0:FindFirstChild("HumanoidRootPart")

							if not v352 then
								local v353 = Vector3.new(_u0.HumanoidRootPart.Position.X, workspace.FallenPartsDestroyHeight, _u0.HumanoidRootPart.Position.Z)
								_u1.Position = v353
							end

						end
					end)
					task.wait(3)
					_u1:SetPrimaryPartCFrame(_u0.CFrame)
					workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
					local v354 = _u2.Character:FindFirstChildWhichIsA("Humanoid")
					workspace.CurrentCamera.CameraSubject = v354
					_u2.CameraMinZoomDistance = 0.5
					_u2.CameraMaxZoomDistance = 400
					_u2.CameraMode = Enum.CameraMode.Classic
					_u2.Character.Head.Anchored = false
				end

				v347.AnimationPlayed:Connect(function(a)
					if not _u0 then

						if a.Animation.AnimationId == _u1 then
							_u2()
						end

					end
				end)
			end()
			v345.LocalPlayer.CharacterAdded:Connect(function()
				if _u0.Character then
					local v346 = _u0.CharacterAdded:Wait()
				end

				local v347 = v346:WaitForChild("Humanoid")
				local v348 = v346:WaitForChild("HumanoidRootPart")

				local function v349()
					task.wait(1.5)
					local v350 = game:GetService("StarterGui")
					v350:SetCore("SendNotification", { Title = "Combat Gui", Text = "Bypassing Death Counter", Duration = 2.5 })
					task.wait(2)
					_u1:SetPrimaryPartCFrame(_u1)
					v350 = Instance.new("Part")
					v350.Parent = workspace.Terrain
					v350.Name = "Void"
					v350.Transparency = 1
					v350.Anchored = true
					local v351 = Vector3.new(2048, 1, 2048)
					v350.Size = v351
					v351 = Vector3.new(0, workspace.FallenPartsDestroyHeight, 0)
					v350.Position = v351
					v350.Locked = true
					v351 = game:GetService("RunService")
					v351.Heartbeat:Connect(function()
						if not _u0 then
							local v352 = _u0:FindFirstChild("HumanoidRootPart")

							if not v352 then
								local v353 = Vector3.new(_u0.HumanoidRootPart.Position.X, workspace.FallenPartsDestroyHeight, _u0.HumanoidRootPart.Position.Z)
								_u1.Position = v353
							end

						end
					end)
					task.wait(3)
					_u1:SetPrimaryPartCFrame(_u0.CFrame)
					workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
					local v354 = _u2.Character:FindFirstChildWhichIsA("Humanoid")
					workspace.CurrentCamera.CameraSubject = v354
					_u2.CameraMinZoomDistance = 0.5
					_u2.CameraMaxZoomDistance = 400
					_u2.CameraMode = Enum.CameraMode.Classic
					_u2.Character.Head.Anchored = false
				end

				v347.AnimationPlayed:Connect(function(a)
					if not _u0 then

						if a.Animation.AnimationId == _u1 then
							_u2()
						end

					end
				end)
			end)
			v233["Heartbeat"]:Connect(function()
				if not _u0 then
					_u1()
				end
			end)
			v233["Heartbeat"]:Connect(function() _u0() end)
			task.spawn(function()
				while true do

					if not _u0 then
						_u1()
					end

					task.wait(0.1)
				end
			end)
		end

	end

else
	wait(0.1)
	v1 = game:GetService("StarterGui")
	v1:SetCore("SendNotification", { Title = "Uh oh", Text = "Combat gui won't work properly in this game", Duration = 2 })
end
