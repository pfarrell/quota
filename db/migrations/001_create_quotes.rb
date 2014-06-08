Sequel.migration do
  change do
    create_table(:quotes) do
      primary_key :id
      Integer :author_id, :null => false
      String :quote, :null => false
      String :url

      DateTime :created_at
      DateTime :updated_at
    end
  end
end
