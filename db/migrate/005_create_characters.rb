class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.belongs_to :actor
      t.belongs_to :show
    end
  end
end
