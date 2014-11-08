class Contact < ActiveRecord::Base
  obfuscate_id :spin => 104010

  belongs_to :user
  belongs_to :group
  # for protected_attributes
  attr_accessible :user_id, :group_id, :first_name, :last_name, :birthday, :email, :celphone, :phone, :address, :comments


  def fullname
    "#{last_name} #{first_name}"
  end

  def o_id
    ObfuscateId.hide(id, self.class.obfuscate_id_spin)
  end
end
