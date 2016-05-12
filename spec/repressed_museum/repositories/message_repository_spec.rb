require_relative '../../spec_helper'
RSpec.describe MessageRepository do
  let(:m)       { Message.new(title: "Repressed Idea", text: "World is blind") }
  let(:message) { MessageRepository.create(m) }

  describe "message creation" do
    it "was created" do
      expect(message).not_to eq nil
    end
  end
end
