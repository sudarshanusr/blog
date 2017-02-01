class CreateMailersTags < ActiveRecord::Migration
  def change
    create_table :mailers_tags do |t|
      t.references :mailer, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
