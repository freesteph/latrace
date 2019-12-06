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
end
