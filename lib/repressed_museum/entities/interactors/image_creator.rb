class ImageCreator
  IMAGE_PATH = './apps/web/assets/images/archive/*.jpg'
  class << self
    def create_images
      images.map { |name| Image.new(title: name) }
    end

    def images
      Dir[IMAGE_PATH].map { |path| path.split('/').last }
    end
  end
end
