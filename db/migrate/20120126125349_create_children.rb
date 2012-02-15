class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      
        t.column :uuid,:string 
    	t.column :S_name,:string
    	t.column :DOB,:date
        t.column :F_name, :string
    	t.column  :M_name, :string
    	t.column :clas,:integer
    	t.column :Email, :string
    	t.column :phone,:string 
    	t.column :A_salary, :string
    	t.column  :PAN_no ,  :string
    	t.column :marks,:integer
    	t.column :attendance,:integer
    	t.column :due,:integer
    	t.column :country,:string
        t.column :state,:string
        t.column :declaration,:boolean
    	
    	t.column :address,:string

      
      t.timestamps
    end
  end
end
