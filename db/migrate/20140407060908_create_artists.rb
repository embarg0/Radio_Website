class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :stage_name
      t.string :nationality
      t.string :band_name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
