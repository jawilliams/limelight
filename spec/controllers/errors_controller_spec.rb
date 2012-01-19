require 'spec_helper'

describe ErrorsController do
  it { should respond_to(:index) }
  it { should respond_to(:show) }
  it { should respond_to(:create) }
  it { should respond_to(:destroy) }

  describe "GET 'index'" do
    let(:errors) { FactoryGirl.create_list(:error, 2) }
    before {
      Error.stubs(:all).returns(errors)
      get :index
    }
    it { should respond_with(:success) }
    it { should render_template(:index) }
    it { should assign_to(:errors).with(errors) }
  end

  describe "GET 'show'" do
    let(:error) { Factory(:error) }
    before {
      Error.stubs(:find).returns(error)
      get :show, :id => '1'
    }
    it { should respond_with(:success) }
    it { should render_template(:show) }
    it { should assign_to(:error).with(error) }
  end

  describe "POST 'create'" do
    context 'with invalid attributes' do
      let!(:error) { Factory.build(:error, :message => nil) }
      before {
        Error.stubs(:new).returns(error)
        post :create, :error => {}, :format => :xml
      }
      it { should respond_with(422) }
    end

    context 'with valid attributes' do
      let!(:error) { Factory.build(:error) }
      before {
        Error.stubs(:new).returns(error)
        post :create, :error => {}, :format => :xml
      }
      it { should respond_with(:created) }
    end
  end
end
