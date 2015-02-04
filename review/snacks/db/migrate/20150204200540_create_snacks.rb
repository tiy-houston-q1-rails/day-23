class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :name
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
