require_relative '../../../../apps/web/controllers/locale/en'

RSpec.describe Web::Controllers::Locale::En do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successfully changed locale' do
    response = action.call(params)
    expect(action.session["locale"]).to eq :en
    expect(response[0]).to eq 302
  end
end
