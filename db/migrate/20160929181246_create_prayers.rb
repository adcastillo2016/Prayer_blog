class CreatePrayers < ActiveRecord::Migration[5.0]
  def change
    create_table :prayers do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
