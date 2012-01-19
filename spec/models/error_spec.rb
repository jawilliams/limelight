# == Schema Information
#
# Table name: errors
#
#  id              :integer         not null, primary key
#  exception_class :string(255)
#  message         :string(255)
#  url             :string(255)
#  session         :text
#  env             :text
#  params          :text
#  backtrace       :text
#  generated_at    :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Error do
  it { should respond_to(:exception_class) }
  it { should respond_to(:message) }
  it { should respond_to(:url) }
  it { should respond_to(:session) }
  it { should respond_to(:env) }
  it { should respond_to(:params) }
  it { should respond_to(:backtrace) }

  it { should validate_presence_of(:exception_class) }
  it { should validate_presence_of(:message) }
  it { should validate_presence_of(:backtrace) }
end
