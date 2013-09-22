require 'spec_helper'

describe Comment do
  it { should_not have_valid(:content).when(nil, "", "short") }
  it { should have_valid(:content).when("abcdefghijklmnop") }

  it { should_not have_valid(:menu_item).when(nil) }
  it { should have_valid(:menu_item).when(MenuItem.new) }

  it { should belong_to :menu_item }
end
