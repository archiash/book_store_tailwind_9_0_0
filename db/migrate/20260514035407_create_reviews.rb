class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :reviewable, polymorphic: true
      t.datetime :reviewed_at

      t.timestamps
    end
  end
end
