class Project < ActiveRecord::Base
  belongs_to :client
  validates :client_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :billtype, presence: true
  
end
