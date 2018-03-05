class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def list_roles
    self.characters.collect do |char|
      "#{char.name} - #{char.show.name}"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
