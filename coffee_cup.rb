class Coffee
  def initialize(max_capacity, amount)
    @max_capacity = max_capacity
    @amount = amount
  end

  def sip!
    @amount = @amount - rand(6) - 1
    puts "#{@amount} oz left."
    if @amount <= 0
      puts "Hey! You need a refill!"
    end
    #decreases the amt of coffee in the cup.
    #permanently affect the state of coffee cup instance @amount
    #if @amout == 0 puts "Hey! You need a refill!"
  end

  def spill!
    @amount = 0
    puts "#{@amount} oz left."
    #eliminates @amount to 0
  end

  def refill!
    @amount = @max_capacity - 2
    puts "#{@amount} oz full."
    #refills to 2oz less than max_capacity.
  end

end

default = Coffee.new(12, 8)

require'pry'
binding.pry
