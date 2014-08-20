class Project < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :billtype, presence: true
    
end
