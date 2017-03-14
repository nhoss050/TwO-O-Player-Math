module MathGame


  class Player

    attr_reader :score

    def initialize(number)
      @number = number
      @score = 3
    end

    def add_point
      @score -= 1
    end

  end

end