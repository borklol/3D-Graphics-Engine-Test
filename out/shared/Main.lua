-- Compiled with roblox-ts v2.1.0
local Vec3D
do
	Vec3D = setmetatable({}, {
		__tostring = function()
			return "Vec3D"
		end,
	})
	Vec3D.__index = Vec3D
	function Vec3D.new(...)
		local self = setmetatable({}, Vec3D)
		return self:constructor(...) or self
	end
	function Vec3D:constructor(X, Y, Z)
		self.X = 0
		self.Y = 0
		self.Z = 0
		self.X = X
		self.Y = Y
		self.Z = Z
	end
end
local Triangle
do
	Triangle = setmetatable({}, {
		__tostring = function()
			return "Triangle"
		end,
	})
	Triangle.__index = Triangle
	function Triangle.new(...)
		local self = setmetatable({}, Triangle)
		return self:constructor(...) or self
	end
	function Triangle:constructor(triangles)
		self.p = triangles
	end
end
local Mesh
do
	Mesh = setmetatable({}, {
		__tostring = function()
			return "Mesh"
		end,
	})
	Mesh.__index = Mesh
	function Mesh.new(...)
		local self = setmetatable({}, Mesh)
		return self:constructor(...) or self
	end
	function Mesh:constructor()
		self.Triangles = {}
	end
end
return {
	Vec3D = Vec3D,
	Triangle = Triangle,
	Mesh = Mesh,
}
