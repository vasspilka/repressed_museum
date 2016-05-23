module Web::Controllers::Home
  class Archive
    include Web::Action
    expose :images

    def call(params)
      @images = Image.all
    end
  end
end
