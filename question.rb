module MathGame


  class Question

    attr_reader :number1, :number2

    def initialize
      @number1 = 0
      @number2 = 0
      @answer = 0
    end



    def random_number
      @number1 = rand(1..20)
      @number2 = rand(1..20)
    end



  end

end