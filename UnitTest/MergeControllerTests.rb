require 'minitest/autorun'
require 'json'
require '../Account/MergeController.rb'
require './MOCKS/MergeRestService.rb'

##
#Unit test class to test MergeController
class MergeControllerTests < MiniTest::Unit::TestCase

  def test_Successful_Merge_With_Good_Data_And_One_Bad_Input
    #Setup
    fakeUrl = "http://thisUrlIsNotImportantBecauseMockRestServiceIsBeingUsed.com"
    inputFilePath = "resources/testInput.csv"
    outputFilePath = "resources/testOutput.csv"

    mockMergeRestService = MergeRestService.new()
    myMergeController = MergeController.new(mockMergeRestService)

    #Act
    myMergeController.mergeAccountData(inputFilePath, outputFilePath, fakeUrl)

    #Verify
    CSV.foreach((outputFilePath), headers: true, col_sep: ",") do |curOutputCsvRow|
      assert_equal "1", curOutputCsvRow["Account ID"]
      assert_equal "Barry", curOutputCsvRow["First Name"]
      assert_equal "2014-10-07", curOutputCsvRow["Created On"]
      assert_equal "pass", curOutputCsvRow["Status"]
      assert_equal "2021-05-01", curOutputCsvRow["Status Set On"]
    end
  end

  def test_Path_Verification_With_Bad_Input_Path
    #Setup
    inputFilePath = "resources/badInputPath.csv"
    outputFilePath = "resources/testOutput.csv"

    mockMergeRestService = MergeRestService.new()
    myMergeController = MergeController.new(mockMergeRestService)

    #Act/Verify
    assert_equal false, myMergeController.verifyFilePaths(inputFilePath, outputFilePath)
  end

  def test_Path_Verification_With_Bad_Output_Path
    #Setup
    inputFilePath = "resources/testInput.csv"
    outputFilePath = "badPath/testOutput.csv"

    mockMergeRestService = MergeRestService.new()
    myMergeController = MergeController.new(mockMergeRestService)

    #Act/Verify
    assert_equal false, myMergeController.verifyFilePaths(inputFilePath, outputFilePath)

  end


end
