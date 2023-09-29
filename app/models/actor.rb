# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def roles
    my_actor_id = self.id

    roles = Character.where({:actor_id => my_actor_id})

    return roles
  end
end
