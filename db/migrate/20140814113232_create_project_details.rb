class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :name
      t.text    :code
      t.string  :description
      t.string  :billtype
      t.date    :startdate
      t.date    :deadline
      t.date    :enddate
      t.string  :giturl
      t.string  :status
      t.references :client, index: true
    end
  end
end
