class Mig3 < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.column :post_id, :int
      t.column :voted_for, :boolean

      t.timestamps

    end
  end
end
