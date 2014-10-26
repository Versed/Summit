class School < ActiveRecord::Base
  has_many :news, dependent: :destroy
  has_many :sections, dependent: :destroy
end
