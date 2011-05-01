require 'spec_helper'

describe Person do

  context "validations" do
    it { should validate_presence_of(:first_name) }
  end
end
