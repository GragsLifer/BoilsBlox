 e = 0.5 + (math.sin(t) / 2)\
			if motor:IsA('Motor6D') then\
				if motor.Name == 'fw' then\
					motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
				else\
					motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
				end\
			elseif motor:IsA('Bone') then\
				motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
			end\
		end\
	end\
	for motor, pose in anim.f[1] do \
		motor = f:FindFirstChild(motor, true)\
		if motor then\
			local t = sine + anim.f_delay\
			if motor.Name == \"Neck\"then\
				t += anim.f_neck_delay\
			elseif motor.Name:find(\"Hip\")then\
				t += anim.f_hip_delay\
			elseif motor.Name:find(\"Shoulder\")then\
				t += anim.f_shoulder_delay\
			elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then\
				t += anim.bw_delay\
			end\
			local e = 0.5 + (math.sin(t) / 2) \
			if motor:IsA('Motor6D') then\
				motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][motor.Name], e), lerpSpeed)\
			elseif motor:IsA('Bone') then\
				motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.f[2][motor.Name], e), lerpSpeed)\
			end\
		end\
	end\
	local a = ((ack-1)%4) + 1\
	local over25 = false\
	if not ismn then\
		if speed >= 25 then\
			over25 = true\
			m3 = 0 \
			m2 = 1 \
			m1 = 1\
		else \
			over25 = false\
			m3 = 1\
			m2 = 1\
			m1 = 0\
		end\
	end\
	if t > anim.sfx/speed then\
		t = 0\
		ack = math.min(ack + 1, max)\
		if not anim.head then\
			fsfx(8142423452, 2)\
			fsfx(sfx2[a], 2)\
		else \
			fsfx(8142423452, 2)\
			fsfx(9114122475, 1, 1.5)\
		end\
		if math.random() <= (anim.sfx/speed)/2 and not ismn then\
			ismn = true\
			--[[local m = fsfx(sfx[a], 1)\
			if anim.head then\
				--m.Volume = 2\
				m.Volume = 0.5\
				script.eq:Clone().Parent = m\
			end]]\
			m3 = 0 \
			m2 = 1 \
			m1 = 1\
			local l, l2 = over25 and 1 or 0, over25 and 0 or 1\
			task.delay(0.2, function()\
				if isdn then\
					return\
				end\
				m3 = 1 \
				m2 = 0\
				m1 = 1\
				task.wait(0.2)\
				if isdn then\
					return\
				end\
				m3 = 1 \
				m2 = 1\
				m1 = 1\
				f.face.mouth4.Transparency = 0\
				task.wait(0.2)\
				if isdn then\
					return\
				end\
				f.face.mouth4.Transparency = 1\
				ismn = false\
				m3 = l2\
				m2 = 1\
				m1 = l\
			end)\
		end\
		if lplr.Name == m.Name then\
			if ack <= math.floor(max/2.5) and not rel then\
				lplr.PlayerGui.ui.Frame.start.bar.Size = UDim2.fromScale(1, ack/math.floor(max/2.5))\
				plap += 1\
				\
				if plap % 5 == 0 then\
					task.defer(function()\
						f.v:FindFirstChild(\"prt\",true):Emit(math.random(1,5))\
					end)\
				end\
			else \
				local s = (ack-math.floor(max/2.5))/(max-math.floor(max/2.5))\
				lplr.PlayerGui.ui.Frame.meter.bar.Size = UDim2.fromScale(1, math.min(1, s))\
				if rel then --s == 1 then\
					isdn = true\
					ismn = true\
					m3 = 0 \
					m2 = 1 \
					m1 = 1\
					f.face.eyes2.Transparency = 0\
					f.face.eyes.Transparency = 1\
					task.delay(0.2, function()\
						m3 = 1 \
						m2 = 0\
						task.wait(0.2)\
						m2 = 1\
						f.face.mouth4.Transparency = 0\
						task.wait(0.5)\
						f.face.mouth4.Transparency = 1\
						f.face.mouth5.Transparency = 0\
					end)\
					local mn = fsfx(2440889605, 1)\
					if anim.head then\
						mn.Volume = 2\
						script.eq:Clone().Parent = mn\
					end\
					fsfx(sfx2[a], 0.9)\
\
\
					task.defer(function()\
						for i = 1, 4 do \
							task.wait(0.7)\
							if not anim.head and not anim.b then\
								f.v:FindFirstChild(\"prt\",true):Emit(17)\
							elseif anim.head and not anim.b then\
								f.Head:FindFirstChild(\"prt\",true):Emit(17)\
							else \
								m.fortnite:FindFirstChild(\"prt\",true):Emit(17)\
							end\
							if anim.cumshot then\
								--local shot = script.CumShot:Clone()\
								--local pivotpoint = shot:GetPivot().Position\
								--for _,v in shot:GetChildren() do\
								--	if v:IsA(\"BasePart\") then\
								--		v.Position = pivotpoint\
								--		v.CanCollide = true\
								--		v.Anchored = false\
								--		v.TopSurface = Enum.SurfaceType.Glue\
								--		v.BottomSurface = Enum.SurfaceType.Glue\
								--		v.LeftSurface = Enum.SurfaceType.Glue\
								--		v.RightSurface = Enum.SurfaceType.Glue\
								--		v.FrontSurface = Enum.SurfaceType.Glue\
								--		v.BackSurface	 = Enum.SurfaceType.Glue\
								--	end\
								--end\
								--local shotcframe = m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldCFrame\
								--shot:PivotTo(shotcframe + shotcframe.LookVector * 0.1)\
								--shot.Parent = workspace.Terrain\
								--shot:GetChildren()[1].AssemblyLinearVelocity = shotcframe.LookVector * math.random(50,100)\
								--game.Debris:AddItem(shot, 5)\
								local shotcframe = m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldCFrame\
								local shotvel = shotcframe.LookVector * 20 + Vector3.new(\
									math.random(-5, 5),\
									0,\
									math.random(-5, 5)\
								)\
								task.defer(newcumshot, shotcframe, shotvel, cm_ignore)\
							else\
								local params = RaycastParams.new()\
								params.RespectCanCollide = true\
								params.FilterDescendantsInstances = {m, f}\
								local results = workspace:Raycast(m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldPosition, Vector3.new(0,-999.999,0), params)\
								if results then\
									local puddle = script.Puddle:Clone()\
									puddle.CanQuery = false\
									puddle.CanTouch = false\
									puddle.Anchored = true\
									puddle.CanCollide = false\
									puddle.Transparency = 0.1\
									puddle.CFrame = CFrame.new(results.Position, results.Position + results.Normal) * CFrame.fromOrientation(-math.rad(90),0,0) * CFrame.fromOrientation(0, math.rad(math.random(0,360)), 0)\
									puddle.Parent = workspace.Terrain\
									task.delay(4, function()\
										game:GetService(\"TweenService\"):Create(puddle, TweenInfo.new(0.7), {Transparency = 1}):Play()\
									end)\
									game.Debris:AddItem(puddle, 5)\
								end\
							end\
							\
							if not anim.head and not anim.b then\
								for i,v in (anim.anal and f.v.Anus:GetChildren() or f.v:GetChildren()) do \
									if v.Name == \"d\" and v:IsA(\"BasePart\") then\
										local s = v.Size\
										v.Size *= 1.6\
										game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()\
									end\
								end\
							elseif anim.head and not anim.b then \
								local v = f.Head.d\
								local s = v.Size\
								v.Size *= 1.6\
								game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()\
							else \
								for i,v in f.a:GetChildren() do \
									if v.Name == \"d\" and v:IsA(\"BasePart\") then\
										local s = v.Size\
										v.Size *= 1.6\
										game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()\
									end\
								end\
							end\
\
\
							for i,v in m.fortnite:GetDescendants() do \
								if v.Name == \"d\" and v:IsA(\"BasePart\")then\
									local s = v.Size\
									v.Size *= 1.6\
									game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()\
								end\
							end\
							fsfx(491214142, 1, 0.35)\
							fsfx(8142423452, 1.4)\
						end\
					end)\
					local p2 = {}\
					for motor, pose in anim.f_done do \
						motor = f:FindFirstChild(motor, true)\
						if motor:IsA('Motor6D') then\
							p2[motor] = motor.C0:Lerp(pose, 1.4)\
						else\
							p2[motor] = motor.Transform:Lerp(pose, 1.4)\
						end\
					end\
					local mp2 = {}\
					if anim.m_done then\
						for motor, pose in anim.m_done do \
							motor = m:FindFirstChild(motor, true)\
							if motor then\
								--mp2[motor] = motor.C0:Lerp(pose, 1.4)\
								if motor.Name == 'fw' then\
									mp2[motor] = motor.Transform:Lerp(pose, 1.4)\
								else\
									mp2[motor] = motor.C0:Lerp(pose, 1.4)\
								end\
							else\
								mp2[motor] = motor.Transform:Lerp(pose, 1.4)\
							end\
						end\
					end\
					for i = 1, 250 do \
						sine += task.wait() * 23\
						if m.Name == lplr.Name then\
							lplr.PlayerGui.ui.Frame.start.bar.Size = lplr.PlayerGui.ui.Frame.start.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)\
							lplr.PlayerGui.ui.Frame.meter.bar.Size = lplr.PlayerGui.ui.Frame.meter.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)\
						end\
						if anim.m_done then\
							for motor, pose in anim.m_done do \
								motor = m:FindFirstChild(motor, true)\
								if motor then\
									local t = sine + anim.m_delay\
									if motor.Name == \"Neck\"then\
										t += anim.m_neck_delay\
									elseif motor.Name:find(\"Hip\")then\
										t += anim.m_hip_delay\
									elseif motor.Name:find(\"Shoulder\")then\
										t += anim.m_shoulder_delay\
									end\
									if mp2[motor] then\
										if motor:IsA('Motor6D') then\
											--local pivot = if motor.Name == 'fw' then motor.C1 else CFrame.new()\
											--motor.C0 = pivot * motor.C0:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
											if motor.Name == 'fw' then\
												motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)\
											else\
												motor.C0 = motor.C0:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)\
											end\
										elseif motor:IsA('Bone') then\
											motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
										end\
									end\
								end\
							end\
						else\
							for motor, pose in anim.m[1] do \
								motor = m:FindFirstChild(motor, true)\
								if motor then\
									local t = sine + anim.m_delay\
									if motor.Name == \"Neck\"then\
										t += anim.m_neck_delay\
									elseif motor.Name:find(\"Hip\")then\
										t += anim.m_hip_delay\
									elseif motor.Name:find(\"Shoulder\")then\
										t += anim.m_shoulder_delay\
									end\
									local e = 0.5 + (math.sin(t) / 2)\
									if motor:IsA('Motor6D') then\
										if motor.Name == 'fw' then\
											motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
										else\
											motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
										end\
									elseif motor:IsA('Bone') then\
										motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)\
									end\
								end\
							end\
						end\
\
						for motor, pose in anim.f_done do \
							motor = f:FindFirstChild(motor, true)\
							if motor then\
								local t = sine + anim.f_delay\
								if motor.Name == \"Neck\"then\
									t += anim.f_neck_delay\
								elseif motor.Name:find(\"Hip\")then\
									t += anim.f_hip_delay\
								elseif motor.Name:find(\"Shoulder\")then\
									t += anim.f_shoulder_delay\
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then\
									t += anim.bw_delay\
								end\
								if p2[motor] then\
									if motor:IsA('Motor6D') then\
										motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
									elseif motor:IsA('Bone') then\
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
									end\
								end\
							end\
						end\
					end\
					for i = 1, 100 do \
						for motor, pose in anim.f_done do \
							motor = f:FindFirstChild(motor, true)\
							if motor then\
								local t = sine + anim.f_delay\
								if motor.Name == \"Neck\"then\
									t += anim.f_neck_delay\
								elseif motor.Name:find(\"Hip\")then\
									t += anim.f_hip_delay\
								elseif motor.Name:find(\"Shoulder\")then\
									t += anim.f_shoulder_delay\
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then\
									t += anim.bw_delay\
								end\
								if p2[motor] then\
									if motor:IsA('Motor6D') then\
										if motor.Name == 'fw' then\
											motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
										else\
											motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
										end\
									elseif motor:IsA('Bone') then\
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)\
									end\
								end\
							end\
						end\
					end\
					for i = 1, 50 do \
						task.wait()\
						for motor, pose in anim.f[1] do \
							motor = f:FindFirstChild(motor, true)\
							if motor then\
								local t = sine + anim.f_delay\
								if motor.Name == \"Neck\"then\
									t += anim.f_neck_delay\
								elseif motor.Name:find(\"Hip\")then\
									t += anim.f_hip_delay\
								elseif motor.Name:find(\"Shoulder\")then\
									t += anim.f_shoulder_delay\
								elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then\
									t += anim.bw_delay\
								end\
								local e = 0.5 + (math.sin(t) / 2) \
								if motor:IsA('Motor6D') then\
									motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)\
								elseif motor:IsA('Bone') then\
									motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)\
								end\
							end\
						end\
						for motor, pose in anim.m[1] do \
							motor = m:FindFirstChild(motor, true)\
							if motor then\
								local t = sine + anim.m_delay\
								if motor.Name == \"Neck\"then\
									t += anim.m_neck_delay\
								elseif motor.Name:find(\"Hip\")then\
									t += anim.m_hip_delay\
								elseif motor.Name:find(\"Shoulder\")then\
									t += anim.m_shoulder_delay\
								end\
								local e = 0.5 + (math.sin(t) / 2) \
								if motor:IsA('Motor6D') then\
									if motor.Name == 'fw' then\
										motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)\
									else\
										motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)\
									end\
								elseif motor:IsA('Bone') then\
									motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)\
								end\
							end\
						end\
\
					end\
					ismn = false\
					f.face.mouth4.Transparency = 1\
					f.face.mouth5.Transparency = 1\
					f.face.eyes2.Transparency = 1\
					f.face.eyes.Transparency = 0\
					isdn = false\
					local l, l2 = over25 and 1 or 0, over25 and 0 or 1\
					m1 = l\
					m2 = 1 \
					m3 = l2\
					ack = 0\
					local sm = speedMult\
					speedMult = 0\
					task.defer(function()\
						for i = 1, 350 do \
							task.wait()\
							speedMult = lerp(0, sm, i/350)\
						end\
					end)\
					rel = false\
				end\
			end\
		end\
	end		\
	updating = false\
end)\
--end"
obj879504.Parent = game.ServerStorage
    local obj437534 = Instance.new("ModuleScript")
    obj437534.Name = "animations"
    obj437534.Source = "return {\
	cg = {\
		m_neck_delay = 1,\
		m_hip_delay = 0,\
		m_shoulder_delay = 1,\
		f_neck_delay = -1.5,\
		f_hip_delay = 0.5,\
		f_shoulder_delay = 0,\
		m_delay = 0,\
		f_delay = 0.5,\
		default = 10,\
		sfx = 5.8,\
		fortnite = CFrame.Angles(math.rad(-28), 0, 0),\
		offset = CFrame.new(0, 0.1, -0.4) * CFrame.Angles(math.rad(12), 0, 0),\
		shield_offset = CFrame.new(0,0,0),\
		rshield_offset = CFrame.new(0.5,0.5,-0.5),\
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),\
		bw_delay = -1,\
		f_when_done = true,\
		c_offset = CFrame.new(0, -1.4, -2) * CFrame.Angles(math.rad(-7), math.pi, 0),\
		transparent = false,\
		t_transparent = false,\
		cumshot = true,\
		f_done = {\
			--[\"RootJoint\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-75.54), math.rad(-0.01), math.rad(179.98)) - Vector3.new(0, 0.2, 0) - Vector3.new(0, 0.1, 0);\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-77.89), math.rad(0), math.rad(179.98));\
			[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-71.69)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
			--[\"Left Hip\"] = CFrame.new(--[[0.03]] -.36 + .5, -1.07, -0.35) * CFrame.Angles(math.rad(169.33), -math.rad(48.17), -math.rad(-71.69));\
			[\"Right Shoulder\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-21.6));\
			--[\"Right Hip\"] = CFrame.new(0.36 - .5, -1.02, -0.54) * CFrame.Angles(math.rad(169.81), -math.rad(-38.46), -math.rad(78.93));\
			[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(78.93)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
			[\"Left Shoulder\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(math.rad(-6.56), math.rad(-58.69), math.rad(7.45));\
		},\
		m = {\
			{\
				[\"RootJoint\"] = CFrame.new(0.03, -2.6, -2.99) * CFrame.Angles(math.rad(178.09), math.rad(0.64), math.rad(-0.01));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-108.63), math.rad(3.86), math.rad(-178.72));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-69.23));\
				[\"Right Shoulder\"] = CFrame.new(0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math.rad(129.69));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), math.rad(67.58));\
				[\"Left Shoulder\"] = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad(-76.8), math.rad(-54.51));\
			};\
			{\
				[\"RootJoint\"] = CFrame.new(0.03, -2.6, -2.99) * CFrame.Angles(math.rad(-178.94), math.rad(0.64), math.rad(-0.04));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-103.63), math.rad(3.96), math.rad(-179.07));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-72.29));\
				[\"Right Shoulder\"] = CFrame.new(0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math.rad(130.74));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), math.rad(70.65));\
				[\"Left Shoulder\"] = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad(-76.8), math.rad(-56.51));\
			}\
		},\
		f = {\
			{\
				--[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-106.38), math.rad(0.01), math.rad(179.98));\
				--[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88)) * CFrame.new(0, 0, 1);\
				[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.35, -0.25);\
				[\"Right Shoulder\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-13.53)) - Vector3.new(0, 0.23, 0);\
				--[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1);\
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.35, -0.25);\
				[\"Left Shoulder\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(math.rad(-6.56), math.rad(-58.69), math.rad(-0.62)) - Vector3.new(0, 0.23, 0);\
			};\
			{\
				--[\"bw\"] = CFrame.new(0, -0.08, 0) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.91, -0.92) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98)) + Vector3.new(0, -0.5, 0);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-112.86), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-72.8)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
				[\"Right Shoulder\"] = CFrame.new(1.08, 0.2, -0.15) * CFrame.Angles(math.rad(-4.28), math.rad(57.06), math.rad(-12.88)) - Vector3.new(0, 0.23, 0);\
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(79.57)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
				[\"Left Shoulder\"] = CFrame.new(-0.77, 0.26, -0.11) * CFrame.Angles(math.rad(-6.5), math.rad(-55.65), math.rad(-0.57)) - Vector3.new(0, 0.23, 0);\
			}\
		}\
	},\
	\
	acg = {\
		m_neck_delay = 1,\
		m_hip_delay = 0,\
		m_shoulder_delay = 1,\
		f_neck_delay = -1.5,\
		f_hip_delay = 0.5,\
		f_shoulder_delay = 0,\
		m_delay = 0,\
		f_delay = 0.5,\
		default = 10,\
		sfx = 5.8,\
		fortnite = CFrame.Angles(math.rad(-5), 0, 0),\
		offset =  CFrame.new(0, 0.1, -0.4) * CFrame.Angles(math.rad(12), 0, 0) + Vector3.new(0, 0, -.3),\
		shield_offset = CFrame.new(0,0,0),\
		rshield_offset = CFrame.new(0.5,0.5,-0.5),\
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),\
		bw_delay = -1,\
		f_when_done = true,\
		c_offset = CFrame.new(0, -1.4, -2) * CFrame.Angles(math.rad(-7), math.pi, 0),\
		transparent = false,\
		t_transparent = false,\
		cumshot = true,\
		anal = true,\
		f_done = {\
			[\"RootJoint\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-75.54), math.rad(-0.01), math.rad(179.98)) - Vector3.new(0, 0.2, 0) - Vector3.new(0, 0.1, 0);\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-77.89), math.rad(0), math.rad(179.98));\
			[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-71.69)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
			--[\"Left Hip\"] = CFrame.new(--[[0.03]] -.36 + .5, -1.07, -0.35) * CFrame.Angles(math.rad(169.33), -math.rad(48.17), -math.rad(-71.69));\
			[\"Right Shoulder\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-21.6));\
			--[\"Right Hip\"] = CFrame.new(0.36 - .5, -1.02, -0.54) * CFrame.Angles(math.rad(169.81), -math.rad(-38.46), -math.rad(78.93));\
			[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(78.93)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
			[\"Left Shoulder\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(math.rad(-6.56), math.rad(-58.69), math.rad(7.45));\
		},\
		m = {\
			{\
				[\"RootJoint\"] = CFrame.new(0.03, -2.6, -2.99) * CFrame.Angles(math.rad(178.09), math.rad(0.64), math.rad(-0.01));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-108.63), math.rad(3.86), math.rad(-178.72));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-69.23));\
				[\"Right Shoulder\"] = CFrame.new(0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math.rad(129.69));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), math.rad(67.58));\
				[\"Left Shoulder\"] = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad(-76.8), math.rad(-54.51));\
			};\
			{\
				[\"RootJoint\"] = CFrame.new(0.03, -2.6, -2.99) * CFrame.Angles(math.rad(-178.94), math.rad(0.64), math.rad(-0.04));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-103.63), math.rad(3.96), math.rad(-179.07));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-72.29));\
				[\"Right Shoulder\"] = CFrame.new(0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math.rad(130.74));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), math.rad(70.65));\
				[\"Left Shoulder\"] = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad(-76.8), math.rad(-56.51));\
			}\
		},\
		f = {\
			{\
				--[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-106.38), math.rad(0.01), math.rad(179.98));\
				--[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88)) * CFrame.new(0, 0, 1);\
				[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.35, -0.25);\
				[\"Right Shoulder\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-13.53)) - Vector3.new(0, 0.23, 0);\
				--[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1);\
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.35, -0.25);\
				[\"Left Shoulder\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(math.rad(-6.56), math.rad(-58.69), math.rad(-0.62)) - Vector3.new(0, 0.23, 0);\
			};\
			{\
				--[\"bw\"] = CFrame.new(0, -0.08, 0) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.91, -0.92) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98)) + Vector3.new(0, -0.5, 0);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-112.86), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-72.8)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
				[\"Right Shoulder\"] = CFrame.new(1.08, 0.2, -0.15) * CFrame.Angles(math.rad(-4.28), math.rad(57.06), math.rad(-12.88)) - Vector3.new(0, 0.23, 0);\
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(79.57)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);\
				[\"Left Shoulder\"] = CFrame.new(-0.77, 0.26, -0.11) * CFrame.Angles(math.rad(-6.5), math.rad(-55.65), math.rad(-0.57)) - Vector3.new(0, 0.23, 0);\
			}\
		}\
	},\
	\
	cy = {\
		m_neck_delay = 1,\
		m_hip_delay = 0,\
		m_shoulder_delay = 0.5,\
		f_neck_delay = 0.5,\
		f_hip_delay = 0.5,\
		f_shoulder_delay = 0,\
		m_delay = 0,\
		f_delay = 0.5,\
		default = 10,\
		sfx = 5.8,\
		fortnite = CFrame.Angles(math.rad(30), 0, 0),\
		offset = CFrame.new(0, 0.6, -1), --CFrame.new(0, 0.3, -1),\
		shield_offset = CFrame.new(0,0,0),\
		rshield_offset = CFrame.new(0.5,0.5,-0.5),\
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),\
		bw_delay = -1,\
		c_offset = CFrame.new(0.7, -1.4, -0.7) * CFrame.Angles(math.rad(-28), math.pi/2 + math.rad(40), 0),\
		f_when_done = true,\
		transparent = false,\
		t_transparent = false, --true,\
		cumshot = true,\
		f_done = {\
			[\"RootJoint\"] = CFrame.new(0.02, -0.07, -0.73) * CFrame.Angles(math.rad(-119.51), math.rad(0.77), math.rad(-1.36));\
			[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(152.66));\
			[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(37.25), math.rad(33.65), math.rad(31.86));\
			[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-141.88));\
			[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(46.36), math.rad(-37.37), math.rad(-23.69));\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-79.45), math.rad(0), math.rad(179.98));\
		},\
		m_done = {\
			--[\"fw\"] = CFrame.Angles(math.rad(-12), 0, 0) * CFrame.new(0, 0, 0.3) - Vector3.new(0,0.35, 0),\
			[\"fw\"] = CFrame.Angles(math.rad(25), 0, 0),\
			[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-77.2), math.rad(-0.01), math.rad(179.98));\
			[\"Left Shoulder\"] = CFrame.new(-1.12, 0.21, -0.48) * CFrame.Angles(math.rad(29.4), math.rad(-64.09), math.rad(22.11));\
			[\"Right Hip\"] = CFrame.new(1, -1.04, 0.01) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(12.73));\
			[\"Right Shoulder\"] = CFrame.new(1, 0.4, -0.21) * CFrame.Angles(math.rad(18.51), math.rad(54.36), math.rad(13.01));\
			[\"Left Hip\"] = CFrame.new(-1, -1.04, 0.01) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-24.08));\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-104.34), math.rad(0.01), math.rad(179.98));\
		},\
		m = {\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(5), 0, 0) * CFrame.new(0, 0, 0.1) - Vector3.new(0,0.35, 0),\
				[\"fw\"] = CFrame.Angles(math.rad(30), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-97.85), math.rad(0), math.rad(179.98));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-111), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-52.49));\
				[\"Right Shoulder\"] = CFrame.new(1, 0.42, -0.2) * CFrame.Angles(math.rad(27.89), math.rad(52.85), math.rad(16.2));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(41.14));\
				[\"Left Shoulder\"] = CFrame.new(-1.13, 0.3, -0.45) * CFrame.Angles(math.rad(36.15), math.rad(-62.98), math.rad(13.62));\
			};\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(-12), 0, 0) * CFrame.new(0, 0, 0) - Vector3.new(0,0.35, 0),\
				[\"fw\"] = CFrame.Angles(math.rad(25), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-82.85), math.rad(0), math.rad(179.98));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-121.98), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1.04, 0.01) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-29.24));\
				[\"Right Shoulder\"] = CFrame.new(1, 0.4, -0.21) * CFrame.Angles(math.rad(18.51), math.rad(54.36), math.rad(13.01));\
				[\"Right Hip\"] = CFrame.new(1, -1.04, 0.01) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(17.89));\
				[\"Left Shoulder\"] = CFrame.new(-1.12, 0.21, -0.48) * CFrame.Angles(math.rad(29.4), math.rad(-64.09), math.rad(22.11));\
			};\
		},\
		f = {\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0.02, -0.05, -0.87) * CFrame.Angles(math.rad(-114), math.rad(0.64), math.rad(-1.43));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-121.13), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(52.81), math.rad(-39.8), math.rad(-20.67));\
				[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-142.88));\
				[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(39.01), math.rad(34.49), math.rad(31.46));\
				[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(153.66));\
			};\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0),\
				[\"RootJoint\"] = CFrame.new(0.02, -0.07, -0.73) * CFrame.Angles(math.rad(-111.46), math.rad(0.57), math.rad(-1.46));\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-105.9), math.rad(0.01), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(54.61), math.rad(-40.38), math.rad(-22.49));\
				[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-138.32));\
				[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(43.61), math.rad(37), math.rad(30.96));\
				[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(149.1));\
			};\
		}\
	},\
	dg = {\
		m_neck_delay = 1,\
		m_hip_delay = 0,\
		m_shoulder_delay = 0,\
		f_neck_delay = 0.5,\
		f_hip_delay = 0,\
		f_shoulder_delay = 0,\
		m_delay = 0,\
		f_delay = 0,\
		default = 10,\
		sfx = 5.8,\
		fortnite = CFrame.Angles(math.rad(-25), 0, 0),\
		offset =  CFrame.new(0, 0.1, -1.5),\
		shield_offset = CFrame.new(0,0,0),\
		rshield_offset = CFrame.new(0.5,0.5,-0.5),\
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),\
		bw_delay = -1,\
		c_offset = CFrame.new(0, -1, -1.9) * CFrame.Angles(math.pi + math.rad(20),0,0),\
		f_when_done = true,\
		transparent = false,\
		t_transparent = false,\
		cumshot = true,\
		f_done = {\
			[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(165.09), math.rad(0.02), math.rad(-179.99));\
			[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));\
			[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12), math.rad(-82.48));\
			[\"Right Shoulder\"] = CFrame.new(0.98, 0.99, -0.65) * CFrame.Angles(math.rad(-63.63), math.rad(34.99), math.rad(-95.61));\
			[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85), math.rad(95.72));\
			[\"Left Shoulder\"] = CFrame.new(-0.98, 0.93, -0.56) * CFrame.Angles(math.rad(-73.43), math.rad(-30.77), math.rad(86.5));\
		},\
		m_done = {\
			[\"fw\"] = CFrame.Angles(math.rad(-26), 0, 0) * CFrame.new(0, 0, 0.2) - Vector3.new(0,0.35, 0),\
			[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-82.27), math.rad(0), math.rad(179.98));\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-88.04), math.rad(0), math.rad(179.98));\
			[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-5.69));\
			[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-154.89));\
			[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(-10.17));\
			[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(139.25));\
		},\
		m = {\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(30), 0, 0)[[ * CFrame.new(0, 0, 0.1)]] - Vector3.new(0, 0.35, 0) + Vector3.new(0, 0, .2),\
			    [\"fw\"] = CFrame.Angles(math.rad(50), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.04) * CFrame.Angles(math.rad(-102.37 - 30), math.rad(0), math.rad(179.98)) - Vector3.new(0, 0.2, 0.1);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-101.38), math.rad(0), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-37.75 - 45));\
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-133.66 + 30));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(21.9 + 45));\
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(118.02 - 30));\
			};\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(-14 - 10), 0, 0)--[[ * CFrame.new(0, 0, 0)]] - Vector3.new(0, 0.35, 0),\
				[\"fw\"] = CFrame.Angles(math.rad(-20), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-94.85 + 5), math.rad(0), math.rad(179.98)) + Vector3.new(0, 0.1, 0.05);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-98.21), math.rad(0), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-23.47 + 5));\
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-145.75 - 30));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(7.61 - 5));\
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(130.1 + 30));\
			};\
		},\
		f = {\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(12), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -1.82, -1.65) * CFrame.Angles(math.rad(144.84), math.rad(0.02), math.rad(-179.99)) - Vector3.new(0, 0, 0.2);\
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(18.4), math.rad(-0.02), math.rad(-179.99));\
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12), math.rad(-109.58 + 5));\
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 + 5))- Vector3.new(0, -0.4, 0);\
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85), math.rad(122.82 - 5));\
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.rad(-68.98), math.rad(-27.25), math.rad(81.99 - 5))- Vector3.new(0, -0.4, 0);\
			};\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(148.72), math.rad(0.02), math.rad(-179.99)) + Vector3.new(0, 0, 0.3);\
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));\
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12), math.rad(-103.02 - 10));\
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 - 10))- Vector3.new(0, -0.55, 0);\
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85), math.rad(116.27 + 10));\
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.rad(-68.98), math.rad(-27.25), math.rad(81.99 + 10)) - Vector3.new(0, -0.55, 0);\
			};\
		}\
	},\
	dga = {\
		m_neck_delay = 1,\
		m_hip_delay = 0,\
		m_shoulder_delay = 0,\
		f_neck_delay = 0.5,\
		f_hip_delay = 0,\
		f_shoulder_delay = 0,\
		m_delay = 0,\
		f_delay = 0,\
		default = 10,\
		sfx = 5.8,\
		fortnite = CFrame.Angles(math.rad(5), 0, 0),\
		offset =  CFrame.new(0, 0.1, -1.5),\
		shield_offset = CFrame.new(0,0,0),\
		rshield_offset = CFrame.new(0.5,0.5,-0.5),\
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),\
		bw_delay = -1,\
		c_offset = CFrame.new(0, -1, -1.9) * CFrame.Angles(math.pi + math.rad(20),0,0),\
		f_when_done = true,\
		transparent = false,\
		t_transparent = false,\
		cumshot = true,\
		anal = true,\
		f_done = {\
			[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(165.09 + 17), math.rad(0.02), math.rad(-179.99));\
			[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));\
			[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95 - 7), math.rad(-68.12), math.rad(-82.48));\
			[\"Right Shoulder\"] = CFrame.new(0.98, 0.99, -0.65) * CFrame.Angles(math.rad(-63.63), math.rad(34.99), math.rad(-95.61));\
			[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7 + 7), math.rad(72.85), math.rad(95.72));\
			[\"Left Shoulder\"] = CFrame.new(-0.98, 0.93, -0.56) * CFrame.Angles(math.rad(-73.43), math.rad(-30.77), math.rad(86.5));\
		},\
		m_done = {\
			[\"fw\"] = CFrame.Angles(math.rad(-26), 0, 0),-- * CFrame.new(0, 0, 0.2) - Vector3.new(0,0.35, 0),\
			[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-82.27), math.rad(0), math.rad(179.98));\
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-88.04), math.rad(0), math.rad(179.98));\
			[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-5.69));\
			[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-154.89));\
			[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(-10.17));\
			[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(139.25));\
		},\
		m = {\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(30), 0, 0)--[[ * CFrame.new(0, 0, 0.1)]] - Vector3.new(0, 0.35, 0) + Vector3.new(0, 0, .2),\
				[\"fw\"] = CFrame.Angles(math.rad(50), 0, 0),-- * CFrame.new(0, 0, 0.1) - Vector3.new(0, 0.35, 0) + Vector3.new(0, 0, .2),\
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.04) * CFrame.Angles(math.rad(-102.37 - 30), math.rad(0), math.rad(179.98)) - Vector3.new(0, 0.2, 0.1);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-101.38), math.rad(0), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-37.75 - 45));\
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-133.66 + 30));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(21.9 + 45));\
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(118.02 - 30));\
			};\
			{\
				--[\"fw\"] = CFrame.Angles(math.rad(-14 - 10), 0, 0)--[[ * CFrame.new(0, 0, 0)]] - Vector3.new(0, 0.35, 0),\
				[\"fw\"] = CFrame.Angles(math.rad(-14 - 10), 0, 0),-- * CFrame.new(0, 0, 0) - Vector3.new(0, 0.35, 0),\
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-94.85 + 5), math.rad(0), math.rad(179.98)) + Vector3.new(0, 0.1, 0.05);\
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-98.21), math.rad(0), math.rad(179.98));\
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-23.47 + 5));\
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-145.75 - 30));\
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(7.61 - 5));\
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(130.1 + 30));\
			};\
		},\
		f = {\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(12), 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -1.82, -1.65) * CFrame.Angles(math.rad(144.84 + 17), math.rad(0.02), math.rad(-179.99)) - Vector3.new(0, 0, 0.2);\
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(18.4), math.rad(-0.02), math.rad(-179.99));\
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12 - 7), math.rad(-109.58 + 5));\
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 + 5))- Vector3.new(0, -0.4, 0);\
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85 + 7), math.rad(122.82 - 5));\
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.rad(-68.98), math.rad(-27.25), math.rad(81.99 - 5))- Vector3.new(0, -0.4, 0);\
			};\
			{\
				[\"bw\"] = CFrame.new(0, 0, 0),\
				[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(148.72 + 17), math.rad(0.02), math.rad(-179.99)) + Vector3.new(0, 0, 0.3);\
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));\
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12 - 7), math.rad(-103.02 - 10));\
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 - 10))- Vector3.new(0, -0.55, 0);\
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85 + 7), math.rad(116.27 + 10));\
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.ra