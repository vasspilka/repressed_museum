module Web::Controllers::Messages
  class Create
    include Web::Action

    params do
      param :message do
        param :title
        param :text
      end
    end

    def call(params)
      MessageRepository.new.create Message.new(message_params)
      self.status = 405
      self.body   = 'Error 405: Authority undefined'
    end

    private

    def message_params
      {
        text:  params[:message][:text],
        title: params[:message][:title]
      }
    end
  end
end
