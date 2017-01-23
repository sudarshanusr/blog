class CreateMailersSentMails < ActiveRecord::Migration
  def change
    create_table :mailers_sent_mails do |t|
      t.references :mailer, index: true, foreign_key: true
      t.references :sent_mail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
