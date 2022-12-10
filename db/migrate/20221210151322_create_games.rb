class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :home_team
      t.integer :home_team_id
      t.string :guest_team
      t.integer :guest_team_id
      t.integer :home_team_score
      t.integer :guest_team_score
      t.datetime :play_at
      t.string :division_name

      t.timestamps
    end
  end
end
