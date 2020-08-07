class RemoveTimestampsFromGenres < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :created_at, :string
    remove_column :genres, :updated_at, :string
  end
end
