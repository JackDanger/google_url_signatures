require 'helper'

class TestGoogleUrlSignatures < Test::Unit::TestCase

  context "signing" do
    context "with a valid key and url" do
      setup {
        @url = "http://maps.google.com/maps/api/geocode/json?address=New+York&sensor=false&client=ABC123"
        @key = "vNIXE0xscrmjlyV-12Nj_BvUPaw="
        @signed = GoogleUrlSignatures.sign(@key, @url)
      }
      should "generate signed url" do
        assert_equal "http://maps.google.com/maps/api/geocode/json?address=New+York&sensor=false&client=ABC123&signature=Wjm6Tt9aygtehoibWXjkD1DqEH4=\n",
                     @signed
      end
    end
  end

end
