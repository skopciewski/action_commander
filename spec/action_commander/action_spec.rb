require 'spec_helper'
require 'action_commander/action'

module ActionCommander
  describe Action do
    Given(:context) { double(invoked: true) }
    Given(:action) {
      Action.new(context) do |on|
        on.success { |a, b| context.invoked("SUCCESS", a, b) }
        on.failure { |a, b| context.invoked("FAILURE", a, b) }
        on.other   { |a, b| context.invoked("OTHER", a, b) }
      end
    }

    Invariant { action.context == context }

    describe "calling success" do
      When(:result) { action.success(:first, :second) }
      Then { expect(context).to have_received(:invoked).with("SUCCESS", :first, :second) }
      Then { result == [:first, :second] }
    end

    describe "calling failure" do
      When(:result) { action.failure(:first, :second) }
      Then { expect(context).to have_received(:invoked).with("FAILURE", :first, :second) }
      Then { result == [:first, :second] }
    end

    describe "calling other" do
      When(:result) { action.callback(:other, :first, :second) }
      Then { expect(context).to have_received(:invoked).with("OTHER", :first, :second) }
      Then { result == [:first, :second] }
    end

    describe "calling unknown" do
      When(:result) { action.callback(:unknown, :first, :second) }
      Then { expect(context).to_not have_received(:invoked) }
      Then { result == [:first, :second] }
    end
  end
end
