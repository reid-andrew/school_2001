class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    start_time_integer = @start_time.gsub(':00', '').to_i
    end_time_integer = start_time_integer + @hours_in_school_day
    "#{end_time_integer}:00"
  end

  def is_full_time?
    @hours_in_school_day >= 4 ? true : false
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    start_time_integer = @start_time.gsub(':00', '').to_i
    end_time_integer = start_time_integer + @hours_in_school_day
    end_time_integer = end_time_integer > 12 ? end_time_integer - 12 : end_time_integer
    "#{end_time_integer}:00"
  end

end
