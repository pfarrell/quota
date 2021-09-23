Sequel.migration do
  change do
    create_table(:sources) do
      primary_key :id
      Integer :quote_id, :null => false
      Integer :author_id, :null => false

      DateTime :created_at
      DateTime :updated_at
    end
  end
end
