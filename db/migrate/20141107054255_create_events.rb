class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.references :contact, index: true
      t.date :event_date
      t.string :name
      t.text :comments
      t.boolean :remember, default: false

      t.timestamps
    end

    add_index :events, :name
  end
end
