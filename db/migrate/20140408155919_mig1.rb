class Mig1 < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :link, :string
      t.column :comments, :text

      t.timestamps
    end
  end
end
