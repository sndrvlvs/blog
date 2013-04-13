class Post < ActiveRecord::Base
	validates :name,  :presence => true
  validates :title, :presence => true, :length => { :minimum => 5 }
  validates_format_of :email, :presence => true, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  #before_save :default_values

  #def default_values
  #	self.closed = false
  #end

  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
