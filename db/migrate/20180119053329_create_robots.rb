class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.text :name
      t.text :city
      t.text :state
      t.text :department

      t.timestamps null: false
    end
  end

end
