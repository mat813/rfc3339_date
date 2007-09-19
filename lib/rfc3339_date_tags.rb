require 'time'
require 'date'

module Rfc3339DateTags
  include Radiant::Taggable

  tag 'rfc3339_date' do |tag|
    page = tag.locals.page
    time_attr = tag.attr['for']
    date = if time_attr
	     case
	     when time_attr == 'now'
	       Time.now
	     when ['published_at', 'created_at', 'updated_at'].include?(time_attr)
	       page[time_attr]
	     else
	       raise TagError, "Invalid value for 'for' attribute."
	     end
	   else
	     page.published_at || page.created_at
	   end
    case date
    when Time
      date.iso8601
    when Date
      date.to_s
    else
      raise TagError, "The 'for' attribute should be either a Time, or a Date descendant"
    end
  end
end
