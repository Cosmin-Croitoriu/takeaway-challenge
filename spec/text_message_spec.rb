require "text_message"

describe TextMessage do
  it 'sends a payment confirmation text message' do
    expect(subject).to receive(:send)
    subject.send(20.93)
  end
end
