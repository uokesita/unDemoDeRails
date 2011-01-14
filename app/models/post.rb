class Post < ActiveRecord::Base
  default_scope order("secuencia DESC")
  
  validates :titulo,      :presence => true
  validates :secuencia,   :presence => true,
                          :numericality => { :greater_than => 0 }
  validates :descripcion, :presence => true
end
