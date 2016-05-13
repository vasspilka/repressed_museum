require_relative '../../../../apps/web/controllers/messages/repress'

RSpec.describe Web::Controllers::Messages::Repress do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
