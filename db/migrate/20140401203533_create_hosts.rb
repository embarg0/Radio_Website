class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :first_name
      t.string :last_name
      t.string :stage_name
      t.date :date_of_birth
      t.integer :rating
      t.date :contract_start_date
      t.date :contract_end_date
      t.integer :salary

      t.timestamps
    end
  end
end
