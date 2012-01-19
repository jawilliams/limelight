class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :exception_class
      t.string :message
      t.string :url
      t.text :session
      t.text :env
      t.text :params
      t.text :backtrace
      t.datetime :generated_at

      t.timestamps
    end
  end
end
