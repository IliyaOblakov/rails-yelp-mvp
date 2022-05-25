class ChangeColumnType < ActiveRecord::Migration[7.0]
  change_table "restaurants" do |t|
    t.change :category, :string
  end
end
