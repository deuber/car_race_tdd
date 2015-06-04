require_relative 'car'


class Race
	attr_accessor :cars

	def initialize
		@cars = []
		@car1 = Car.new
		@car2 = Car.new
		@cars << @car1 << @car2

		@car1.speed = rand(100)
		@car2.speed = rand(100)
	end	

	def winner
		if @car1.speed > @car2.speed
			@winner = @car1
		else
			@winner = @car2
		end
	end

	def loser
		if @car1.speed < @car2.speed
			@loser = @car1
		else
			@loser = @car2
		end
	end


end

