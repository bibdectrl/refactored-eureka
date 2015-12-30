Vec2 = {}

function Vec2:new(x, y)
  local vec = {}
  vec.x = x
  vec.y = y
  self.__index = self
  return setmetatable(vec, Vec2)
end

function Vec2.__add(v1, v2)
  local x = v1.x + v2.x
  local y = v1.y + v2.y
  return Vec2:new(x, y)
end

function Vec2.__sub(v1, v2)
  local x = v1.x - v2.x
  local y = v1.y - v2.y
  return Vec2:new(x, y)
end

function Vec2.__mul(v, scalar)
  local x = v.x * scalar
  local y = v.y * scalar
  return Vec2:new(x, y)
end

function Vec2.magnitude(v)
  return math.sqrt((v.x * v.x) + (v.y *v.y))
end

function Vec2.unit(v)
  local m = Vec2.magnitude(v)
  local x = v.x / m
  local y = v.y / m
  return Vec2:new(x, y)
end

function Vec2:add(v)
  self.x = self.x + v.x
  self.y = self.y + v.y
end

function Vec2:sub(v)
  self.x = self.x - v.x
  self.y = self.y - v.y
end
