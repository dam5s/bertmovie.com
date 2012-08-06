class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :body
      t.timestamp :published_at

      t.timestamps
    end
  end
end
