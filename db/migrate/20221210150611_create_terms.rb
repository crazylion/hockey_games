class CreateTerms < ActiveRecord::Migration[7.0]
  def change
    create_table :terms do |t|
      t.string :name
      t.references :cup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
