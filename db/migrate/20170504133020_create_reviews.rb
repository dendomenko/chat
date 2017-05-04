class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :name
      t.text :description
      t.integer :worker_id
      t.timestamps
    end
    add_foreign_key :reviews, :workers
  end
end
