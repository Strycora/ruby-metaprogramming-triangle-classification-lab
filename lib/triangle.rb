class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

    # def initialize(attributes)
    #   attributes.each do |key, value|
    #     self.class.attr_accessor(key)
    #     self.send(("#{key}="), value)
    #   end
    # end

    class TriangleError < StandardError
      def message
        "You must provide sides of a valid triangle"
      end
    end

    def kind
      if (side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1) || (side1 <= 0 || side2 <=0 || side3 <= 0)
        raise TriangleError
      end

      if side1 == side2 && side2 == side3
        :equilateral
      elsif (side1 == side2 && side2 != side3) || (side1 != side2 && side2 == side3) || (side1 == side3 && side1 != side2)
        :isosceles
      elsif side1 != side2 && side2 != side3 && side1 != side3
        :scalene
      end
    end
end

