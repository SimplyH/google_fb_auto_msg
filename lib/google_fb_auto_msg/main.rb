require "env"
require "rubygems"
require "google_drive"

module GoogleFbAutoMsg
  # Your code goes here...

  class ConnectWithGoogleForm
    def initialize
      puts "hello"
      puts Env.user_name
    end

    def print_spreadsheet
      # Logs in.
      # You can also use OAuth. See document of
      # GoogleDrive.login_with_oauth for details.
      #Env['USER_NAME']
      session = GoogleDrive.login(Env.user_name, Env.user_password)

      # First worksheet of
      # https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
      ws = session.spreadsheet_by_key(Env.spreadsheet_key).worksheets[0]

      # Gets content of A2 cell.
      p ws[2, 1]  #==> "hoge"
    end
  end
end

app = GoogleFbAutoMsg::ConnectWithGoogleForm.new
app.print_spreadsheet
