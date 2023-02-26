-- Compiled with roblox-ts v2.1.0
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local _Main = TS.import(script, game:GetService("ReplicatedStorage"), "TS", "Main")
local Mesh = _Main.Mesh
local Triangle = _Main.Triangle
local Vec3D = _Main.Vec3D
local ViewportCanvas = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@rbxts", "ViewportCanvas")
local Main
do
	Main = setmetatable({}, {
		__tostring = function()
			return "Main"
		end,
	})
	Main.__index = Main
	function Main.new(...)
		local self = setmetatable({}, Main)
		return self:constructor(...) or self
	end
	function Main:constructor()
		self.meshCube = Mesh.new()
		local _viewportSize = game:GetService("Workspace").CurrentCamera
		if _viewportSize ~= nil then
			_viewportSize = _viewportSize.ViewportSize
		end
		local viewportSize = _viewportSize
		if not viewportSize then
			return nil
		end
		self.canvas = ViewportCanvas.new(viewportSize.X, viewportSize.Y)
		self.meshCube.Triangles = { Triangle.new({ Vec3D.new(0.0, 0.0, 0.0), Vec3D.new(0.0, 1.0, 0.0), Vec3D.new(1.0, 1.0, 0.0) }), Triangle.new({ Vec3D.new(0.0, 0.0, 0.0), Vec3D.new(1.0, 1.0, 0.0), Vec3D.new(1.0, 0.0, 0.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 0.0), Vec3D.new(1.0, 1.0, 0.0), Vec3D.new(1.0, 1.0, 1.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 0.0), Vec3D.new(1.0, 1.0, 1.0), Vec3D.new(1.0, 0.0, 1.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 1.0), Vec3D.new(1.0, 1.0, 1.0), Vec3D.new(0.0, 1.0, 1.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 1.0), Vec3D.new(0.0, 1.0, 1.0), Vec3D.new(0.0, 0.0, 1.0) }), Triangle.new({ Vec3D.new(0.0, 0.0, 1.0), Vec3D.new(0.0, 1.0, 1.0), Vec3D.new(0.0, 1.0, 0.0) }), Triangle.new({ Vec3D.new(0.0, 0.0, 1.0), Vec3D.new(0.0, 1.0, 0.0), Vec3D.new(0.0, 0.0, 0.0) }), Triangle.new({ Vec3D.new(0.0, 1.0, 0.0), Vec3D.new(0.0, 1.0, 1.0), Vec3D.new(1.0, 1.0, 1.0) }), Triangle.new({ Vec3D.new(0.0, 1.0, 0.0), Vec3D.new(1.0, 1.0, 1.0), Vec3D.new(1.0, 1.0, 0.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 1.0), Vec3D.new(0.0, 0.0, 1.0), Vec3D.new(0.0, 0.0, 0.0) }), Triangle.new({ Vec3D.new(1.0, 0.0, 1.0), Vec3D.new(0.0, 0.0, 0.0), Vec3D.new(1.0, 0.0, 0.0) }) }
	end
	function Main:Update(deltaTime)
	end
end
local main = Main.new()
game:GetService("RunService").RenderStepped:Connect(function(dt)
	main:Update(dt)
end)
