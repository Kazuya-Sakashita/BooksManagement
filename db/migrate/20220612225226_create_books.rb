class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_code, null: false
      t.integer :publisher_code, null: false
      t.string :book_title, null: false
      t.integer :sender_publisher_code, null: false

      t.timestamps
    end
  end
end
