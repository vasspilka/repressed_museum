module Web::Controllers::Locale
  class Gr
    include Web::Action

    def call(params)
      session["locale"] = :gr
      redirect_to '/'
    end
  end
end
