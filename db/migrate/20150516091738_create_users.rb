class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :passwd

      t.timestamps null: false
    end
    add_column :articles, :user_id, :integer, :default=>0
    User.create(name:'admin',password:'admin')
  end
end
