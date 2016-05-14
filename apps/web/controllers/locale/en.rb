module Web::Controllers::Locale
  class En
    include Web::Action

    def call(params)
      session["locale"] = :en
      redirect_to '/'
    end
  end
end
