class AddClassToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :good, :boolean
  end
end
