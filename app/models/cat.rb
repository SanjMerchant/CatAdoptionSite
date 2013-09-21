class Cat < ActiveRecord::Base

	def age
		Date.today.year - self.DOB.year
	end

end
