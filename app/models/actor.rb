class Actor < ActiveRecord::Base
  has_and_belong_to :movies

  def age
    Time.now.year - self.year_of_birth
  end

end
