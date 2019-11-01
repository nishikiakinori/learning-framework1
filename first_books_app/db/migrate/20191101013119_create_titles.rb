class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.text :memo
      t.string :author
      t.string :picture

      t.timestamps
    end
  end
end
