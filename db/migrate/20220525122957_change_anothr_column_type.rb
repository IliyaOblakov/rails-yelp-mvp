class ChangeAnothrColumnType < ActiveRecord::Migration[7.0]
  change_table "restaurants" do |t|
    t.change :phone_number, :string
  end
end
