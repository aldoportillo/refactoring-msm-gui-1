# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography 
    my_director_id = self.id

    films = Movie.where({:director_id => my_director_id}).order({ :year => :asc })
    return films
  end
end
