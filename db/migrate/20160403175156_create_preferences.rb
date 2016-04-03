class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.belongs_to :customer, null: false
      t.belongs_to :ingredient, null: false
      t.boolean :likes, default: false
    end
  end
end
