class Triangle
  def initialize(side1, side2, side3)
    @sides = []
    @sides[0] = side1
    @sides[1] = side2
    @sides[2] = side3
    @sides.sort!
  end

  def kind
    if @sides[2] >= @sides[1] + @sides[0] || @sides[0] <= 0
      raise TriangleError
    end
    sides_equal = 0
    if @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[0] != @sides[1] && @sides[1] != @sides[2] && @sides[0] != @sides[2]
      :scalene
    else
      :isosceles
    end
  end
end

class TriangleError < StandardError
  # triangle error code
end
