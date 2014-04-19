module EventsHelper
  def format_date_range(min, max)
    [min, max].map {|ts| ts.to_date.to_s(:long) }.uniq.join(' - ')
  end
end
