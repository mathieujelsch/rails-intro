class AddListingToMission < ActiveRecord::Migration[7.0]
  def change
    add_reference :missions, :listing, null: false, foreign_key: true
  end
end
