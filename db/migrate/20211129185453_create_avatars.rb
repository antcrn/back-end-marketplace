class CreateAvatars < ActiveRecord::Migration[6.1]
  def change
    create_table :avatars do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
