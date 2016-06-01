RSpec.describe Image do

  let(:image) { Image.new(title: 'image.jpg') }

  it "should have valid path" do
    expect(image.path).to eq "/assets/image.jpg"
  end
end
