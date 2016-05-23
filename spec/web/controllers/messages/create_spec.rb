require_relative '../../../../apps/web/controllers/messages/create'

RSpec.describe Web::Controllers::Messages::Create do
  let(:action) { described_class.new }
  let(:params) { { message: { title: 'A repressed idea', text: 'hello' } } }

  it 'is successfull...ish' do
    response = action.call(params)
    expect(response[0]).to eq 405
  end
end
