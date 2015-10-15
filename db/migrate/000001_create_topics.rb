class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string   :links
      t.text     :title
      t.text     :email
      t.datetime  :created_at

      t.timestamps null: false
    end
  end
end
