class AddKindles < ActiveRecord::Migration
  def up
    create_table :kindles do |t|
      t.string :nickname
      t.string :username
      t.references :user
      t.timestamps
    end
  end

  def down
    drop_table :kindles
  end
end
