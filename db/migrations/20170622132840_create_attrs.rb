Hanami::Model.migration do
  change do
    create_table :attrs do
      primary_key :id
      foreign_key :project_id, :projects, on_delete: :cascade, null: false

      column :name, String, null: false
      column :mold, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
