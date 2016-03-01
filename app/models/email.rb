class Email < ActiveRecord::Base
  belongs_to :fraud
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates :email, email_format: { message: "doesn't look like an email address" }
end
