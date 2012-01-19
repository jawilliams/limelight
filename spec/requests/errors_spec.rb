require 'spec_helper'

describe "Errors" do
  describe "GET /errors" do
    let(:errors) { FactoryGirl.create_list(:error, 1) }
    before {
      Error.stubs(:all).returns(errors)
    }
    it 'should have a valid header' do
      visit errors_path
      page.should have_selector('h2', :text => 'Error Listing')
    end
    it 'should show a list of errors' do
      visit errors_path
      page.should have_content(errors.first.message)
    end
  end
end
