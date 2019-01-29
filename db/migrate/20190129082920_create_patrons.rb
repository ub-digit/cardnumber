class CreatePatrons < ActiveRecord::Migration[5.1]
  def change
    create_table :patrons do |t|
      t.text :personalnumber
      t.text :library_cardnumber
      t.boolean :deleted

      t.timestamps
      t.index ["library_cardnumber"], name: "index_patrons_on_library_cardnumber"
      t.index ["personalnumber"], name: "index_patrons_on_personalnumber"
    end
  end
end
