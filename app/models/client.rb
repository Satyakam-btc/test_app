class Client < ActiveRecord::Base
  has_many :project, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :country, presence: true
end
