class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :nickname
      t.string :conference
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
