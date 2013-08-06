module ApplicationHelper

  def flash_class(level)
    case level
    when :notice then "info"
    when :error then "error"
    when :alert then "warning"
    end
  end
  
  def log_seperator
    return "***************************************************"
  end

  def log_error(message)
    logger.error(log_seperator);
    logger.error(controller_name + '.' + action_name + ":  " + message)
  end
  
end
