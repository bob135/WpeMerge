var search_data = {"index":{"searchIndex":["mergecontroller","mergecontrollertests","mergerestservice","mergerestservicetests","wpemerge","main()","mergeaccountdata()","new()","retrieveaccountsfromwpapi()","test_api_call_with_account_that_doesnt_exist_returns_nil()","test_api_call_with_blank_url_returns_nil()","test_api_call_with_incorrect_url_but_real_website_returns_nil()","test_api_call_with_incorrect_url_returns_nil()","test_api_call_with_https_url_returns_nil()","test_path_verification_with_bad_input_path()","test_path_verification_with_bad_output_path()","test_successful_api_response_returns_expected_data()","test_successful_merge_with_good_data_and_one_bad_input()","verifyfilepaths()","readme","testinput.csv","testoutput.csv","input.csv","out.csv"],"longSearchIndex":["mergecontroller","mergecontrollertests","mergerestservice","mergerestservicetests","wpemerge","wpemerge#main()","mergecontroller#mergeaccountdata()","mergecontroller::new()","mergerestservice#retrieveaccountsfromwpapi()","mergerestservicetests#test_api_call_with_account_that_doesnt_exist_returns_nil()","mergerestservicetests#test_api_call_with_blank_url_returns_nil()","mergerestservicetests#test_api_call_with_incorrect_url_but_real_website_returns_nil()","mergerestservicetests#test_api_call_with_incorrect_url_returns_nil()","mergerestservicetests#test_api_call_with_https_url_returns_nil()","mergecontrollertests#test_path_verification_with_bad_input_path()","mergecontrollertests#test_path_verification_with_bad_output_path()","mergerestservicetests#test_successful_api_response_returns_expected_data()","mergecontrollertests#test_successful_merge_with_good_data_and_one_bad_input()","mergecontroller#verifyfilepaths()","","","","",""],"info":[["MergeController","","MergeController.html","","<p>This class Controls the merge between a provided csv file and WP&#39;s provided Rest API.\n"],["MergeControllerTests","","MergeControllerTests.html","","<p>Unit test class to test MergeController\n"],["MergeRestService","","MergeRestService.html","","<p>This class interacts with WPs provided Rest API.\n<p>This class is a bare bones mock class for unit test purposes …\n"],["MergeRestServiceTests","","MergeRestServiceTests.html","","<p>Uni test class to test MergeRestService\n"],["WpeMerge","","WpeMerge.html","","<p>This class will kick off the merge between an input CSV file and results from WP&#39;s provided Rest …\n"],["main","WpeMerge","WpeMerge.html#method-i-main","()","<p>Creates Controller and Rest Service.  Starts the merge functionality.\n"],["mergeAccountData","MergeController","MergeController.html#method-i-mergeAccountData","(inputFilePath, outputFilePath, restApiUrl)","<p>Merges Data from input csv file and WP&#39;s provided Rest API. Creates a new csv file with the combined …\n"],["new","MergeController","MergeController.html#method-c-new","(inMergeRestService)",""],["retrieveAccountsFromWpApi","MergeRestService","MergeRestService.html#method-i-retrieveAccountsFromWpApi","(restApiUrl, currentAccountId)","<p>Access API to retrieve data for a specified account.\n"],["test_API_Call_With_Account_That_Doesnt_Exist_Returns_Nil","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_API_Call_With_Account_That_Doesnt_Exist_Returns_Nil","()",""],["test_API_Call_With_Blank_URL_Returns_Nil","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_API_Call_With_Blank_URL_Returns_Nil","()",""],["test_API_Call_With_Incorrect_URL_But_Real_Website_Returns_Nil","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_API_Call_With_Incorrect_URL_But_Real_Website_Returns_Nil","()",""],["test_API_Call_With_Incorrect_URL_Returns_Nil","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_API_Call_With_Incorrect_URL_Returns_Nil","()",""],["test_API_Call_With_https_URL_Returns_Nil","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_API_Call_With_https_URL_Returns_Nil","()",""],["test_Path_Verification_With_Bad_Input_Path","MergeControllerTests","MergeControllerTests.html#method-i-test_Path_Verification_With_Bad_Input_Path","()",""],["test_Path_Verification_With_Bad_Output_Path","MergeControllerTests","MergeControllerTests.html#method-i-test_Path_Verification_With_Bad_Output_Path","()",""],["test_Successful_API_Response_Returns_Expected_Data","MergeRestServiceTests","MergeRestServiceTests.html#method-i-test_Successful_API_Response_Returns_Expected_Data","()","<p>Note: this test is very fragile due to the fact that the data in the DB could change. This test will …\n"],["test_Successful_Merge_With_Good_Data_And_One_Bad_Input","MergeControllerTests","MergeControllerTests.html#method-i-test_Successful_Merge_With_Good_Data_And_One_Bad_Input","()",""],["verifyFilePaths","MergeController","MergeController.html#method-i-verifyFilePaths","(inPath, outPath)","<p>Verifies the input file and output directory exist\n"],["README","","README_txt.html","","<p>How to run:\n<p>Open a linux terminal or gitbash. Be sure to have Ruby, the gem &#39;rest-client&#39;, and …\n"],["testInput.csv","","UnitTest/resources/testInput_csv.html","","<p>Account ID,Account Name,First Name,Created On 1,Flash,Barry,2014-10-07 -1,Doom,NoOne,2021-05-02\n"],["testOutput.csv","","UnitTest/resources/testOutput_csv.html","","<p>Account ID,First Name,Created On,Status,Status Set On 1,Barry,2014-10-07,pass,2021-05-01\n"],["input.csv","","resources/input_csv.html","","<p>Account ID,Account Name,First Name,Created On 12345,lexcorp,Lex,2011-01-12 8172,latveriaembassy,Victor,2014-11-19 …\n"],["out.csv","","resources/out_csv.html","","<p>Account ID,First Name,Created On,Status,Status Set On 12345,Lex,2011-01-12,good,2011-01-12 8172,Victor,2014-11-19,closed,2015-09-01 …\n"]]}}