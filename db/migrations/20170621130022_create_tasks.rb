Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id
      foreign_key :project_id, :projects, on_delete: :cascade, null: false

      column :title, String, null: false
      column :content, String, null: true

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
