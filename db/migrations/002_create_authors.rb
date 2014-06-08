Sequel.migration do
  change do
    create_table(:authors) do
      primary_key :id
      String :name, :null => false
      Date :birth_date, :null => true
      Date :death_date, :null => true
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
