class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.text :name
      t.text :surname
      t.text :phone

      t.timestamps
    end
  end
end
