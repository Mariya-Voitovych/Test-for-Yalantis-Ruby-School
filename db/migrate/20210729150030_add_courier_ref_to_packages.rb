class AddCourierRefToPackages < ActiveRecord::Migration[6.1]
  def change
    add_reference :packages, :courier, null: false, foreign_key: true
  end
end
