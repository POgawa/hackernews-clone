class Mig2 < ActiveRecord::Migration
  def change
    rename_table :comments, :posts
  end
end
