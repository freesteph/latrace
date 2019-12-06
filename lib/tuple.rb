# frozen_string_literal: true

# a simple list of coordinates plus some handy helpers
class Tuple
  attr_accessor :x, :y, :z, :w

  def initialize(x, y, z, w)
    @x = x
    @y = y
    @z = z
    @w = w
  end

  def vector?
    @w == 0
  end

  def point?
    @w == 1
  end

  def self.vector x, y, z
    Tuple.new(x, y, z, 0)
  end

  def self.point x, y, z
    Tuple.new(x, y, z, 1)
  end

  def + other
    if point? && other.point?
      raise "does not make sense"
    end

    Tuple.new(
      @x + other.x,
      @y + other.y,
      @z + other.z,
      @w + other.w
    )
  end

  def klass
    if vector? then "Vector" else "Point" end
  end

  def to_s
    "[#{klass}: #{[@x, @y, @z, @w].join(', ')}]"
  end

  def == other
    @x == other.x &&
      @y == other.y &&
      @z == other.z &&
      @w == other.w
  end
end
