require 'spec_helper'
require_relative '../lib/google_fb_auto_msg'

module GoogleIntegration
  describe ConnectWithGoogleSpreadsheet do
      it { should respond_to(:prints_spreadsheet_test) }
  end
end
