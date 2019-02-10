class CreateTranslateChapters < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Chapter.create_translation_table!({
          title: :string,
          content: :text
        }, {
          migrate_data: true
        })
      end

      dir.down do
        Chapter.drop_translation_table! :migrate_data => true
      end
    end
  end
end
