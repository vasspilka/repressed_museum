RSpec.describe MessageRepository do
  let(:message) { MessageRepository.create(title: "Repressed Idea", text: "World is blind") }

  describe "message creation" do
    it "has attributes" do
      expect(message.title).to eq "Repressed Idea"
      expect(message.text).to  eq "World is blind"
    end
  end
end
