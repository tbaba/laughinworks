module ApplicationHelper
  def date_in_tokyo(date)
    date.strftime('%Y/%m/%d - %H:%M:%S')
  end
end
