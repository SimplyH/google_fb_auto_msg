require 'spec_helper'
require_relative '../lib/google_fb_auto_msg'

module GoogleIntegration
  describe ConnectWithGoogleSpreadsheet do
    # it connects
    it { expect(ConnectWithGoogleSpreadsheet.new.connected).to be true }

    # it reads
    it { should respond_to(:prints_spreadsheet_test) }
  end
end
