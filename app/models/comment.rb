class Comment < ActiveRecord::Base
  belongs_to :fraud
  belongs_to :user
end
