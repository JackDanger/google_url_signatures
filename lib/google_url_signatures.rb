# Based on the code at:
# http://gmaps-samples.googlecode.com/svn/trunk/urlsigning/urlsigner.rb

require 'base64'
require 'uri'
# hmac, and hmac-sha1, are from # gem install ruby-hmac
require 'hmac'
require 'hmac-sha1'

module GoogleUrlSignatures
  
  def self.sign(key, url)
    uri = URI.parse url

    path_and_query = uri.path + '?' + uri.query

    decoded_key = Base64.decode64(key.tr('-_','+/'))
    decoded_signature = (HMAC::SHA1.new(decoded_key) << path_and_query).digest
    signature = Base64.encode64(decoded_signature).tr('+/','-_')

    "#{uri.scheme}://#{uri.host}#{path_and_query}&signature=#{signature}"
  end
end