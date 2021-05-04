require './Account/MergeController.rb'
require './Account/MergeRestService.rb'

##
# This class will kick off the merge between an input CSV file and results from WP's provided Rest API.
# Outputs a new csv file.
class WpeMerge
  ##
  # Creates Controller and Rest Service.  Starts the merge functionality.
  def main()
    myMergeRestService = MergeRestService.new()
    myMergeController = MergeController.new(myMergeRestService)

    inFilePath = ARGV[0]
    outFilePath = ARGV[1]
    myMergeController.mergeAccountData(inFilePath, outFilePath, "http://interview.wpengine.io/v1/accounts/")

    print "\nThe application has finished running."
  end
end

myMerger = WpeMerge.new()
myMerger.main()
