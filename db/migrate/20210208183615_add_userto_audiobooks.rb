class AddUsertoAudiobooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :audiobooks, :user, index: true
  end
end
