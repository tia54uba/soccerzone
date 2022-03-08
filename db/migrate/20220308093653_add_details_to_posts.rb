class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :home_team, :string
    add_column :posts, :away_team, :string
  end
end
