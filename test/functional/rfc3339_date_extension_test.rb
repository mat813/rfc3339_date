require File.dirname(__FILE__) + '/../test_helper'

class Rfc3339DateExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(RAILS_ROOT), 'vendor', 'extensions', 'rfc3339_date'), Rfc3339DateExtension.root
    assert_equal 'Rfc3339 Date', Rfc3339DateExtension.extension_name
  end
  
end
