class Assignment < ActiveRecord::Base
	has_many :homeworks

  def reconciliations
    self.all
  end
end
