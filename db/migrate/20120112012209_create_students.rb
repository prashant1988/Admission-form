
class CreateStudents < ActiveRecord::Migration
  
  def change
    create_table :students,:id=> false do |t|
      t.column :uuid,:string,
    	t.column :name,:string
    	t.column :rollno,:integer
    	t.column :clas,:integer	
    	t.column :marks,:integer
    	t.column :attendance,:integer
    	t.column :due,:integer
    	t.column :DOB,:date
    	t.column :phone,:string
    	t.column :address,:string

      t.timestamps
    end
  end
end
