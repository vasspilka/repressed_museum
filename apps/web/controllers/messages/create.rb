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
      MessageRepository.create Message.new(message_params)
      redirect_to '/'
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
