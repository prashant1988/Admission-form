class Child < ActiveRecord::Base
set_primary_key :uuid
validates :clas, :numericality => true
validates :phone, :numericality => true, :length => { :is => 10 }
 validates :S_name,:F_name,:M_name ,:address, :presence => true
validates :declaration, :presence => true
end

