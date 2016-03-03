class Fraud < ActiveRecord::Base
  self.inheritance_column = nil
  has_many :cards, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  has_many :emails, :dependent => :destroy
  has_many :skypes, :dependent => :destroy
  has_many :cities, :dependent => :destroy
  has_many :regions, :dependent => :destroy
  validates :type, presence: true
  validates :firstname, length: { maximum: 50 }
  validates :lastname, length: { maximum: 50 }
  validates :patronymic, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }
  validates_associated :phones,length: {maximum: 10 }
  # validates :phones,length: {maximum: 10 }
  # validates :description, length: { maximum: 10 }
  # has_many :descriptions, :dependent => :destroy
  default_scope ->{order('created_at DESC')}
end
