class CreateMailers < ActiveRecord::Migration
  def change
    create_table :mailers do |t|
      t.string :name,:email,:mobile

      t.timestamps null: false
    end
  end
end
