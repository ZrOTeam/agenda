class Memo < ActiveRecord::Base
  obfuscate_id :spin => 104010

  belongs_to :user
  # for protected_attributes
  attr_accessible :user_id, :content, :archived
end
