class CreateSelfiePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :selfie_posts do |t|
      t.string :description
      t.string :picture_url
      t.belongs_to :User, foreign_key: true

      t.timestamps
    end
  end
end
