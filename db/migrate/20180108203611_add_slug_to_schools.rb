class AddSlugToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :slug, :string
  end
end
