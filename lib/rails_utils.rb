module RailsUtils

  RAILS2_RUN_SCRIPT = "./script/server"
  RAILS3_RUN_SCRIPT = "./script/rails"

  def self.rails_run_command
    case rails_version
    when 2 then rails2_run
    when 3 then rails3_run
    when 4 then rails4_run
    end
  end

  private

  def self.rails_version
    if File.exist?(RAILS2_RUN_SCRIPT)
      2
    elsif File.exist?(RAILS3_RUN_SCRIPT)
      3
    else
      4
    end
  end

  def self.rails2_run
    "#{RAILS2_RUN_SCRIPT} -p"
  end

  def self.rails3_run
    "#{RAILS3_RUN_SCRIPT} server --debugger -p"
  end

  def self.rails4_run
    "rails server --debugger -p"
  end

end
