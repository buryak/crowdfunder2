class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :project_id
      t.integer :quantity
      t.text :description
      t.integer :value

      t.timestamps
    end
  end
end
