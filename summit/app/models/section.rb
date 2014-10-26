class Section < ActiveRecord::Base
  has_many :news, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
