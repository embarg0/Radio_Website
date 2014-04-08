class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :show_name
      t.text :description
      t.string :category


      t.timestamps
    end
  end
end
