class Shows < ActiveRecord::Migration
    def change
    create_table :shows do |t|
      t.string :showName
      t.string :category
      t.text :description

      t.timestamps
    end    
  end
end
