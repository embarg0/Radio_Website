class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :employeeNum
      t.string :firstName
      t.string :lastName
      t.string :stageName
      t.date :dateOfBirth
      t.integer :rating
      t.date :contractStartDate
      t.integer :salary

      t.timestamps
    end
  end
end
