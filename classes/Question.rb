class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    "What is #{@num1} plus #{@num2}?"
  end

  def answer
    @num1 + @num2
  end

end

# class Question

#   def initialize operation, num1, num2
#     @operation = operation
#     @num1 = num1
#     @num2 = num2
#   end

#   attr_reader :operation
#   attr_reader :num1
#   attr_reader :num2

#   def ask
#     "What is #{@num1} #{@operation} #{@num2}?"
#   end

#   def answer
#     if @operation == "plus"
#       num1 + num2
#     elsif @operation == "minus"
#       num1 - num2
#     elsif @operation == "times"
#       num1 * num2
#     else @operation == "divided by"
#       num1 / num2
#     end
#   end

# end

# q1 = Question.new "plus", 1, 2
# puts q1.ask
# puts q1.answer