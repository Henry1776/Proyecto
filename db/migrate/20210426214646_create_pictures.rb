class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content
      t.float :latitude
      t.float :longitude   

      t.timestamps
    end
  end
end
