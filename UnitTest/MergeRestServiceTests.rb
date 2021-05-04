require 'minitest/autorun'
require 'rest_client'
require 'json'
require '../Account/MergeRestService.rb'

##
# Uni test class to test MergeRestService
class MergeRestServiceTests < MiniTest::Unit::TestCase

  #Note: this test is very fragile due to the fact that the data in the DB could change.
  #This test will fail if account 12345 is removed
  def test_Successful_API_Response_Returns_Expected_Data
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("http://interview.wpengine.io/v1/accounts/", "12345")

    #Verify
    assert_equal "good", parsedWebResponse["status"]
  end

  def test_API_Call_With_Account_That_Doesnt_Exist_Returns_Nil
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("http://interview.wpengine.io/v1/accounts/", "-1")

    #Verify
    assert_nil parsedWebResponse
  end

  def test_API_Call_With_Incorrect_URL_Returns_Nil
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("http://SomeBadUrl/", "12345")

    #Verify
    assert_nil parsedWebResponse
  end

  def test_API_Call_With_Blank_URL_Returns_Nil
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("", "")

    #Verify
    assert_nil parsedWebResponse
  end

  def test_API_Call_With_Incorrect_URL_But_Real_Website_Returns_Nil
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("http://facebook.com", "")

    #Verify
    assert_nil parsedWebResponse
  end

  def test_API_Call_With_https_URL_Returns_Nil
    #Setup
    myMergeRestService = MergeRestService.new()

    #Act
    parsedWebResponse = myMergeRestService.retrieveAccountsFromWpApi("https://interview.wpengine.io/v1/accounts/", "12345")

    #Verify
    assert_nil parsedWebResponse
  end

end
