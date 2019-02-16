class CreateUserAsProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_as_profiles do |t|

      t.timestamps
    end
  end
end
