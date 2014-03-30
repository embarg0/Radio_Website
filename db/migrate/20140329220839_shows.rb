class Shows < ActiveRecord::Migration
    def change
    create_table :shows, id: false do |t|
      t.primary_key :showNum
      t.string :showName
      t.string :category
      t.text :description

      t.timestamps
    end    
  end
end
