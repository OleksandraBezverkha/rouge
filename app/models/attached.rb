class Attached < ActiveRecord::Base
  belongs_to :description
  belongs_to :comment
end
