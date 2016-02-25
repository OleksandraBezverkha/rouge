class Fraud < ActiveRecord::Base
  has_many :cards, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  has_many :emails, :dependent => :destroy
  has_many :skypes, :dependent => :destroy
  has_many :cities, :dependent => :destroy
  has_many :regions, :dependent => :destroy
  # has_many :descriptions, :dependent => :destroy
  default_scope ->{order('created_at DESC')}
end
