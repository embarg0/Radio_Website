class CreateHostShows < ActiveRecord::Migration
  def change
    create_table :host_shows do |t|
      t.date :hostStartYear
      t.date :hostStartMonth

      t.timestamps
    end
  end
end
