class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map{|actor| actor.full_name}
  end
  # returns an Array of the full names of each actor associated with the a show. 

end

# A show has many characters and has many actors through characters.