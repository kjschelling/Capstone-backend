class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :additional_info

      t.timestamps
    end
  end
end
