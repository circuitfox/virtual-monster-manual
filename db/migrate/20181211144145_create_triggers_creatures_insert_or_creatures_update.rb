# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggersCreaturesInsertOrCreaturesUpdate < ActiveRecord::Migration[5.2]
  def up
    create_trigger("creatures_before_insert_row_tr", :generated => true, :compatibility => 1).
        on("creatures").
        before(:insert) do
      "SET NEW.name = LOWER(NEW.name);"
    end

    create_trigger("creatures_before_update_row_tr", :generated => true, :compatibility => 1).
        on("creatures").
        before(:update) do
      "SET NEW.name = LOWER(NEW.name);"
    end
  end

  def down
    drop_trigger("creatures_before_insert_row_tr", "creatures", :generated => true)

    drop_trigger("creatures_before_update_row_tr", "creatures", :generated => true)
  end
end
