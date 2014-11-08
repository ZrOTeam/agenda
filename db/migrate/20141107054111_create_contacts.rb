class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.date :birthday
      t.string :email, null: false, default: ""
      t.string :celphone, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.text :address
      t.text :comments

      t.timestamps
    end

    add_index :contacts, :first_name
    add_index :contacts, :last_name
    add_index :contacts, :email
    add_index :contacts, :celphone
    add_index :contacts, :phone
  end
end
