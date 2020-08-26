class RemoveCountryFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :country
  end
end
