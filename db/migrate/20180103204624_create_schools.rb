class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :min_admission_score

      t.timestamps
    end
  end
end
