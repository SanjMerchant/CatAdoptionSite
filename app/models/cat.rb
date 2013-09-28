class Cat < ActiveRecord::Base
	#validates :name

	def age
		Date.today.year - self.DOB.year # Weird logical error if .year is not included
	end

	def self.search_for(query)                                                       
    	where('name LIKE :query', :query => "%#{query}%") 
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

=begin
	
t.string :name
      t.string :sex #changed to boolean in next migration
      t.string :color
      t.date :DOB
      t.float :length #nose to base of tail
      t.float :height #paw to shoulder
      t.float :weight
      t.boolean :spayed_neutered
      t.boolean :house_trained
      t.string :medical_notes
      t.string :human_notes
      t.string :other_pet_notes
      t.string :description
      t.boolean :adopte
	
=end