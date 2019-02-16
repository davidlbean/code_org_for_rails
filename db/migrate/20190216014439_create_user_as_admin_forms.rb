class CreateUserAsAdminForms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_as_admin_forms do |t|

      t.timestamps
    end
  end
end
