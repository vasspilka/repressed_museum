require_relative '../interactors/image_creator'

class Image
  include Hanami::Entity

  attributes :title

  def self.all
    ImageCreator.create_images
  end

  def path
    "/assets/#{title}"
  end

end
