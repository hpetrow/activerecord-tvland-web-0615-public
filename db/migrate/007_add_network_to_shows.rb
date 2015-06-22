class AddNetworkToShows < ActiveRecord::Migration
  def change
    add_column :shows, :network, :belongs_to
  end
end
