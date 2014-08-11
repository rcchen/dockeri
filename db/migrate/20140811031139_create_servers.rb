class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :docker_url
      t.timestamps
    end
  end
end
