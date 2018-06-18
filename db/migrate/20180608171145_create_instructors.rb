class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :salary
      t.string :highest_education
      t.string :string

      t.timestamps
    end
  end
end
