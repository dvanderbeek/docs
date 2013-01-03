class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.references :office

      t.timestamps
    end
    add_index :doctors, :office_id
  end
end
