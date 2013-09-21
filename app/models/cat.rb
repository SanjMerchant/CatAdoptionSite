class Cat < ActiveRecord::Base

	def age
		Date.today.year - self.DOB.year # Weird logical error if .year is not included
	end



end
