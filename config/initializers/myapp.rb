Range::RANGE_FORMATS.merge!(
  :condensed => Proc.new do |start, stop|
    if (start.year == stop.year) and (start.month == stop.month)
      "#{start.day}-#{stop.to_date.to_s(:dmy_long)}"
    else
      "#{start.to_date.to_s(:dmy_long)} to #{stop.to_date.to_s(:dmy_long)}"
    end
  end
)