class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.each_with_object("") { |character, str|
      str << "#{character.name} - #{character.show.name}"
    }
  end
end
