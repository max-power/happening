require "test_helper"

describe Location do
  let(:loc) { build(:location) }

  it "must be valid" do
    loc.must_be :valid?
  end
end
