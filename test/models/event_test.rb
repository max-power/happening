require "test_helper"

describe Event do
  let(:event) { build(:event) }

  it "must be valid" do
    event.must_be :valid?
  end
end
