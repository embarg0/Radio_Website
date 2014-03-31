class ChangeIntegerToPgSearchDocuments < ActiveRecord::Migration
  def up
  change_column :pg_search_documents, :searchable_id, :string
  end

  def down
  change_column :pg_search_documents, :searchable_id, :integer
  end
end
