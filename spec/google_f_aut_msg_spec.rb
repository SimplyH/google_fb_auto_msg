require 'spec_helper'
require_relative '../lib/google_fb_auto_msg'

describe GoogleIntegration do
    it { GoogleIntegration.new should respond_to(:prints_spreadsheet_test) }
end
