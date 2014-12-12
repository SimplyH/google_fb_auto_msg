require "env"
require "rubygems"
require "google_drive"

module GoogleIntegration
  # Your code goes here...

  class ConnectWithGoogleSpreadsheet
    def initialize
      puts "hello"
      puts Env.user_name
      # Logs in.
      # You can also use OAuth. See document of
      # GoogleDrive.login_with_oauth for details.
      #Env['USER_NAME']
      session = GoogleDrive.login(Env.user_name, Env.user_password)
      # First worksheet of
      # https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
      @spreadsheet = session.spreadsheet_by_key(Env.spreadsheet_key).worksheets[0]
    end

    def prints_spreadsheet_test
      # Gets content of A2 cell.
      puts @spreadsheet[2, 1]  #==> "12/1/2014 14:27:23"
    end

    def publish_message
    end
  end

  class ConnectWithFacebook
    def publish_message
    end
  end

  class ConnectWithGooglPlus
    def publish_message
    end
  end
end

