class Event < ActiveRecord::Base
  obfuscate_id :spin => 104010

  belongs_to :user
  belongs_to :contact
  # for protected_attributes
  attr_accessible :user_id, :contact_id, :event_date, :name, :comments, :remember
end
