class CreateAudiobooks < ActiveRecord::Migration[6.0]
  def change
    create_table :audiobooks do |t|
      t.string :title
      t.string :author
      t.integer :duration
      t.string :description

      t.timestamps
    end
  end
end
