require 'src/vec2'

describe("a vector", function()

  before_each(function()
  veca = Vec2:new(10, 20)
  vecb = Vec2:new(2, 4)
  end)

  it("should support addition", function()
    vecc = veca + vecb
    assert.are.equal(vecc.x, 12)
    assert.are.equal(vecc.y, 24)
  end)

  it("should be able to add a vector to itself via mutation", function()
    veca:add(vecb)
    assert.are.equal(veca.x, 12)
    assert.are.equal(veca.y, 24)
  end)

  it("should support subtraction", function()
    local vecc = veca - vecb
    assert.are.equal(vecc.x, 8)
    assert.are.equal(vecc.y, 16)
  end)

  it("should be able to subtract a vector from itself via mutation", function()
    veca:sub(vecb)
    assert.are.equal(veca.x, 8)
    assert.are.equal(veca.y, 16)
  end)

  it("should support scalar multiplication", function()
    local vecc = veca * 10
    assert.are.equal(vecc.x, veca.x * 10)
    assert.are.equal(vecc.y, veca.y * 10)
  end)

  it("should support scalar multiplication via mutation", function()
    veca:mult(0)
    assert.are.equal(veca.x, 0)
    assert.are.equal(veca.y, 0)
  end)

  it("should be able to calculate its magnitude", function()
    local mag = veca:magnitude()
    assert.are.equal(mag, math.sqrt((veca.x * veca.x) + (veca.y * veca.y)))
  end)

  it("should support checking equality of vectors", function()
    assert.are.same(veca, Vec2:new(10, 20))
    assert.are_not.same(veca, vecb)
  end)

  it("should be able to return a unit vector", function()
    local vecc = veca:unit() 
    local vecam = veca:magnitude()
    assert.are.same(vecc, Vec2:new(veca.x / vecam, veca.y / vecam))
  end)

end)
