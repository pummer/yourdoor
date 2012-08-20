class Ooglers < ActiveRecord::Base
  attr_accessible :email, :mobile_phone, :name
  
  validates_presence_of :name
  validates :email, :presence => true, :email => true
  validates_format_of :phone, 
                    :with => /\A[0-9]{10}\Z/, 
                    :allow_blank => true, 
                    :allow_nil => true
 
  
end
