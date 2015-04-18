class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.integer :rank

      t.timestamps null: false
    end
    add_column :articles,:sector_id,:integer,:default=>0
    add_index :articles,:sector_id
    %w(linux ruby rails mysql).each_with_index do |name,index|
	    Sector.create(name: name, rank: index+1)
	end
  end
end
