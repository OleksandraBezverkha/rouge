class Phone < ActiveRecord::Base
  belongs_to :fraud
  validates :phone,length: {maximum: 10 }
end
