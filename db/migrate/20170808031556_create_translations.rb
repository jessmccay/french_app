class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :french
      t.string :english

      t.timestamps
    end
  end
end
