class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.string :weight
      t.string :temperament
      t.timestamps
    end
  end
end
