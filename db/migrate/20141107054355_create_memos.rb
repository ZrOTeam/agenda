class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.references :user, index: true
      t.text :content
      t.boolean :archived, default: false

      t.timestamps
    end
  end
end
