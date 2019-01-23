class CreateUserDataDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_data_definitions do |t|
        t.integer :user_id, null: false
        t.string :definition_name, null: false

        t.timestamps
    end

    add_index :user_data_definitions, :user_id, unique: false
  end
end
