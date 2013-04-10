class AddTestToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :test, :boolean, :default => false

  end
end
