class CreateGuests < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
    CREATE TYPE type_status AS ENUM ('confirmed', 'modified', 'cancelled');
    SQL
    create_table :guests do |t|
      t.string :code
      t.string :email
      t.string :entity
      t.column :status,:type_status

      t.timestamps
    end
  end
  def down
    drop_table :guests
    execute <<-SQL
    DROP TYPE type_status;
    SQL
  end
end
