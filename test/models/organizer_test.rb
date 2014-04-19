require "test_helper"

describe Organizer do
  let(:organizer) { build(:organizer) }

  it "must be valid" do
    organizer.must_be :valid?
  end
end
