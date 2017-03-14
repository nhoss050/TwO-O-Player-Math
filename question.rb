module MathGame


  class Question

    attr_reader :number1, :number2
    attr_accessor :answer

    def initialize
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @answer = 0
    end



    def random_number
      @number1 = rand(1..20)
      @number2 = rand(1..20)
    end

    # def new_answer=(answer)
    #   @answer= answer
    # end



    def correct?
      @answer == @number1 + @number2
    end


  end

end