require_relative '../../../../apps/web/controllers/page/home'

RSpec.describe Web::Controllers::Page::Home do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
