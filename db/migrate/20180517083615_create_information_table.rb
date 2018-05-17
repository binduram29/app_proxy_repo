class CreateInformationTable < ActiveRecord::Migration[5.1]
  def change
    create_table :information_tables do |t|
    	 t.string :information
	     t.timestamps
    end
  end
end
