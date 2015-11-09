class Actor < ActiveRecord::Base
  has_and_belong_to :movies

  def age
    self.year_of_birth - Time.now.year
  end

end
