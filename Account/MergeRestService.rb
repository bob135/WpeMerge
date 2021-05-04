require 'rest-client'
require 'addressable/uri'
require 'json'

##
# This class interacts with WPs provided Rest API.
class MergeRestService
  ##
  # Access API to retrieve data for a specified account.
  def retrieveAccountsFromWpApi(restApiUrl, currentAccountId)
    url = restApiUrl + currentAccountId
    parsed_url = Addressable::URI.parse(url).normalize.to_str
    RestClient.get(parsed_url) { |response, request, result, &block|
      if (!response)
        print "\nNull response from RestClient for Account ID: " + currentAccountId
        return nil
      end
      if response.code >= 300 #Bad response code received from API
        print "\nResponse code: " + response.code.to_s + " received from Account ID: " + currentAccountId
        return nil
      end
      parsedWebResponse = JSON.parse(response)
      return parsedWebResponse
    }
  rescue URI::InvalidURIError => e
    print e.class
  rescue SocketError => e
    print e.class
  rescue RestClient::SSLCertificateNotVerified => e
    print e.class
  end
end
