require_relative '../../../../apps/web/controllers/locale/gr'

RSpec.describe Web::Controllers::Locale::Gr do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successfully changed locale' do
    response = action.call(params)
    expect(action.session["locale"]).to eq :gr
    expect(response[0]).to eq 302
  end
end
