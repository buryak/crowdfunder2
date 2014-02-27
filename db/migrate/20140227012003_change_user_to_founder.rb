class ChangeUserToFounder < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.rename :user_id, :founder_id
    end
  end
end