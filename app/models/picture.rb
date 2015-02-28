class Picture < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  
  has_attached_file :photo, 
    :bucket => 'jjjjustin',
  	:styles => { :medium => "300x300>", 
  				 :thumb => "100x100>" }, 
  	:default_url => "/images/:style/missing.png"
  
=======
  scope :before, -> { where(state: 'before' )}
  scope :after, -> { where(state: 'after' )}
  has_attached_file :photo,
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
>>>>>>> 5923337f255634cee44135333f3d0e99e68ea3a8
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
