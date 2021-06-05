class CreateOgiris < ActiveRecord::Migration[6.0]
  def change
    create_table :ogiris do |t|
      t.string :text, null: false
      t.integer :first_text_id, null: false
      t.integer :second_text_id, null: false
      t.timestamps
    end
  end
end
