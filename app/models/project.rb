class  Project < ActiveRecord::Base
  validates_presence_of :name, :description, :purpose, :technology, :url

  validates :name, length: { maximum: 50 }

  validates :description, length: { maximum: 140 }
  validates :purpose,     length: { maximum: 140 }
  validates :technology,  length: { maximum: 140 }

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  default_url: "/images/:style/missing.png",
  storage: :s3,
  bucket: "downeyd27",
  s3_host_name: 's3-us-west-2.amazonaws.com'


  # url: "/:image/:id/:style/:basename.:extension",
  # path: ":image/:id/:style/:basename.:extension"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
