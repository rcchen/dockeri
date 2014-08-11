class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :docker_protocol
      t.string :docker_url
      t.string :docker_port
      t.timestamps
    end
  end
end
