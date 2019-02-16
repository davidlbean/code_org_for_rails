class CreateUserAsSignUps < ActiveRecord::Migration[5.2]
  def change
    create_table :user_as_sign_ups do |t|

      t.timestamps
    end
  end
end
