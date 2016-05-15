module Web::Views::Home
  class About
    include Web::View

    def about_the_museum
      locale["about"]["title"]
    end


    def text_body
      _raw locale["about"]["text_body"][1..-3].gsub(/[\n]/,"<br>")
    end

  end
end
