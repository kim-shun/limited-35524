class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer    :philosophy_id     , null: false
      t.integer    :color_id          , null: false
      t.integer    :my_type_id        , null: false
      t.integer    :like_type_id      , null: false
      t.integer    :prefecture_id     , null: false
      t.integer    :food_id           , null: false
      t.integer    :hobby_id           , null: false
      t.integer    :music_id          , null: false
      t.integer    :angry_id          , null: false
      t.integer    :improve_id        , null: false
      t.text       :text
      t.references :user
      t.timestamps
    end
  end
end
