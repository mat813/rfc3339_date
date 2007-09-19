# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class Rfc3339DateExtension < Radiant::Extension
  version "1.0"
  description "provide rfc 3339 date format"
  url "http://mat.cc/dev/radiant/rfc3339_date"

  def activate
    Page.send :include, Rfc3339DateTags
  end
end
