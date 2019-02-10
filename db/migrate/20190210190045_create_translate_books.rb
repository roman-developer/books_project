class CreateTranslateBooks < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Book.create_translation_table!({
          title: :string,
          description: :text
        }, {
          migrate_data: true
        })
      end

      dir.down do
        Book.drop_translation_table! :migrate_data => true
      end
    end
  end
end
