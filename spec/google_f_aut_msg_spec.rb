require 'spec_helper'
require_relative '../lib/google_fb_auto_msg'

module Integration
  describe WithGoogleSpreadsheet do
    # it connects
    context 'Connection Status' do
      it { expect(subject.connected).to be true }
    end

    # it reads
    it { should respond_to(:prints_spreadsheet_test) }

    # it writes
    it { should respond_to(:publish_message) }
  end
end
