class AddClosedToPost < ActiveRecord::Migration
  def change
    add_column :posts, :closed, :bool

  end
end
