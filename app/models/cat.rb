class Cat < ActiveRecord::Base

	def age
		Date.today.year - self.DOB.year # Weird logical error if .year is not included
	end

	def sex_in_words
		if self.sex == true
			return "Male"
		else
			return "Female"
		end
	end

	def spay_neuter_in_words
		if self.sex == true
			return "neutered"
		else
			return "spayed"
		end
	end

end