Hanami::Model.migration do
  change do
    alter_table :tasks do
      add_column :vals, "jsonb", null: false, default: "{}"
    end
  end
end
