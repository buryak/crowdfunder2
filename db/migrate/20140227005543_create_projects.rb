class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :goal
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
