class CreateCustomerProfiles < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.boolean :vip, default: false
    end
  end
end
