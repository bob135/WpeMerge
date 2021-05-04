require 'json'
##
# This class is a bare bones mock class for unit test purposes
class MergeRestService
  ##
  # Access API to retrieve data for a specified account.
  def retrieveAccountsFromWpApi(restApiUrl, currentAccountId)
    if (restApiUrl == "badUrl")
      return nil
    end

    if (currentAccountId == "1")
      response = {
        'account_id' => "1",
        'status' => "pass",
        'created_on' => "2021-05-01"
      }
      return response
    end

    return nil
  end
end
