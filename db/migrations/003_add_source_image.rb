Sequel.migration do
  change do
    alter_table(:authors) do
      add_column :image_url, String
    end
  end
end
