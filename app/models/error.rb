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

class Error < ActiveRecord::Base
  validates :exception_class, :presence => true
  validates :message, :presence => true
  validates :backtrace, :presence => true
end
