class CreateEqualizers < ActiveRecord::Migration[6.0]
  def change
    create_table :equalizers do |t|
      t.text :settings
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
