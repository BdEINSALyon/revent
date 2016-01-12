class CreateDocumentModels < ActiveRecord::Migration
  def change
    create_table :document_models do |t|
      t.string :name
      t.string :question
      t.text :description
      t.string :type
      t.boolean :required

      t.timestamps null: false
    end
  end
end
