class AddNameToPassenger < ActiveRecord::Migration[6.0]
  def change
    add_column :passengers, :name, :text
  end
end
