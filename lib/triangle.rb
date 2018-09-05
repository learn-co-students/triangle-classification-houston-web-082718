class Triangle
  # write code here

  attr_reader :side_one, :side_two, :side_three



  def initialize (x,y,z)
    @side_one = x
    @side_two = y
    @side_three = z
  end

  def kind
    
    if side_one > 0 && side_two > 0 && side_three > 0
      if side_one < (side_two + side_three) && side_two < (side_three + side_one) && side_three < (side_one + side_two)
        if side_one == side_two && side_two == side_three
          type = :equilateral
        elsif side_one != side_two && side_two != side_three && side_three != side_one
          type = :scalene
        else
          type = :isosceles
        end
      else 
        raise TriangleError
      end
    else
      raise TriangleError
    end 
  end


  class TriangleError < StandardError
    # triangle error code
  end
end
