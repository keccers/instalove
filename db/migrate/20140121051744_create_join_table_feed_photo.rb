class CreateJoinTableFeedPhoto < ActiveRecord::Migration
  def change
    create_join_table :feeds, :photos do |t|
      t.index [:feed_id, :photo_id]
      t.index [:photo_id, :feed_id]
    end
  end
end
