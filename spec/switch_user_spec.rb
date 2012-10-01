require 'spec_helper'
require 'switch_user'

describe SwitchUser do
  describe "assigning the provider" do
    it "sets the provider" do
      # ensure we aren't breaking existing functionality
      SwitchUser.provider = :sorcery
      SwitchUser.provider.should == :sorcery
    end
    it "sets the provider class" do
      SwitchUser.provider = :devise
      SwitchUser.provider_class.should == SwitchUser::Provider::Devise
    end
  end
end
