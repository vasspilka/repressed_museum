module Web::Views::Messages
  class Repress
    include Web::View

    def form
      form_for :message, '/messages' do

        div class: 'controls' do
          label      locale["form"]["title"], class: 'label'
          text_field :title, class: 'input'
        end

        div class: 'controls' do
          label      locale["form"]["text"], class: 'label'
          text_area  :text, class: 'input'
        end

        div class: 'controls' do
          submit     locale["form"]["submit"], class: 'button'
        end

      end
    end


  end
end
