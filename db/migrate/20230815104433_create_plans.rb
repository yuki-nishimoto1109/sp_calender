class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.integer :user_id, null: false
      t.string  :title,   null: false
      t.string  :body
      t.integer :month,   null: false
      t.integer :date,    null: false
      t.boolean :display,               default: true
      t.timestamps
    end
  end
end
