class ChangeNeighborhoodToBikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :neighborhood, :string
    add_column :bikes, :neighborhood, :integer
    add_column :bikes, :pickup_address, :string
  end
end
