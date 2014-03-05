module RailsUtils

  RAILS2_RUN_COMMAND = "./script/server"
  RAILS3_RUN_COMMAND = "./script/rails"
  RAILS4_RUN_COMMNAD = "rails"

  def self.rails_run_command
    case rails_version
    when 2 then rails2_run
    when 3 then rails3_run
    when 4 then rails4_run
    end
  end

  private

  def self.rails_version
    if File.exist?(RAILS2_RUN_COMMAND)
      2
    elsif File.exist?(RAILS3_RUN_COMMAND)
      3
    else
      4
    end
  end

  def self.rails2_run
    "#{RAILS2_RUN_COMMAND} -p"
  end

  def self.rails3_run
    "#{RAILS3_RUN_COMMAND} server --debugger -p"
  end

  def self.rails4_run
    "#{RAILS4_RUN_COMMNAD} server --debugger -p"
  end

end
