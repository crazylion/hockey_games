class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :title
      t.references :game, null: false, foreign_key: true
      t.text :url

      t.timestamps
    end
  end
end
