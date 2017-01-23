class CreateSentMails < ActiveRecord::Migration
  def change
    create_table :sent_mails do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
