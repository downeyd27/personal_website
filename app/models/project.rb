class  Project < ActiveRecord::Base
  validates_presence_of :name,
                        :description,
                        :purpose,
                        :technology,
                        :url

  # TODO: "Figure out how to reset test data base after tests so there is not more than one unique name in the data base when testing for name uniqueness. Test database builds to have LOTS of examples."
  # validates_uniqueness_of :name

  validates :name, length: { maximum: 50 }

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  default_url: "https://#{Rails.application.secrets.s3_host_name}/#{Rails.application.secrets.s3_bucket_name}/images/:style/missing.png"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # s3_credentials: Proc.new{ |a| a.instance.s3_credentials }

  # TODO: Figure out if s3_credentials are no longer necessary in config/environments/production and config/environments/development
  # def s3_credentials
  #   {
  #     bucket:        "downeyd27",
  #     # TODO: Why can't host s3_host_name work with secrets
  #     s3_host_name:  "s3-us-west-2.amazonaws.com",
  #     # access_key_id: Rails.application.secrets.aws_access_key_id,
  #     # secret_access_key: Rails.application.secrets.aws_secret_access_key,
  #     access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  #     secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
  #   }
  # end

  def self.cached_find(id)
    Rails.cache.fetch(['project, id'], expires_in: 1.day) { find(id) }
  end
end
