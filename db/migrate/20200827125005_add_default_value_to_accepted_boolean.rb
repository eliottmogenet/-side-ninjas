class AddDefaultValueToAcceptedBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column :participations, :accepted, :boolean, default: nil
  end
end
