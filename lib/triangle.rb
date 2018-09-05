class Triangle
  # write code here

  # attr_accessor :kind, :a, :b, :c
  #
  # def initialize(side1, side2, side3)
  #   @a = side1
  #   @b = side2
  #   @c = side3
  # end
  #
  # def kind
  #   validate_triangle
  #   if (a == b && b == c)
  #     @kind = :equilateral
  #   elsif ((a == b && a != c) || (a == c && a != b) || (b == c && b != a))
  #     @kind = :isosceles
  #   end
  #   else
  #     @kind = :scalene
  #   end
  # end
  #
  # def validate_triangle
  #       if(a <= 0 || b <= 0 || c <= 0)
  #         begin
  #           raise TriangleError
  #         rescue TriangleError => error1
  #           puts error1.less_than_message
  #         end
  #       elsif(((a+b) < c) || ((a+c) < b) || ((b + c) < a))
  #         begin
  #           raise TriangleError
  #         rescue TriangleError => error2
  #           puts error2.inequality_message
  #       end
  #     end
  # end
  #
  # class TriangleError < StandardError
  #
  #   def less_than_message
  #     "Sides can't be less than 1."
  #
  #   def inequality_message
  #     "Triangle Inequality!"
  #   end
  #
  # end

attr_reader :a, :b, :c
def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

def kind
  validate_triangle
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def validate_triangle
  real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a, b, c].each do |side|
    if side <= 0
    real_triangle << false
    end 
  end
  raise TriangleError if real_triangle.include?(false)
end

class TriangleError < StandardError
end

end
