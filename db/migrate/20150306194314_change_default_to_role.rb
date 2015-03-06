class ChangeDefaultToRole < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, default: :blank

  end
end
