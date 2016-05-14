module Web::Views::Home
  class About
    include Web::View

    def about_the_museum
      locale["about"]["title"]
    end


    def text_body
      locale["about"]["text_body"]
    end

  end
end
