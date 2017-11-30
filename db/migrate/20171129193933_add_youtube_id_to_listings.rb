class AddYoutubeIdToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :youtube_id, :string
  end
end
