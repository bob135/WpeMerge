require 'csv'

##
# This class Controls the merge between a provided csv file and WP's provided Rest API.
class MergeController
  attr_accessor :mergeRestService

  def initialize(inMergeRestService)
    @mergeRestService = inMergeRestService
  end

  ##
  # Merges Data from input csv file and WP's provided Rest API.
  # Creates a new csv file with the combined data.
  def mergeAccountData(inputFilePath, outputFilePath, restApiUrl)
    if (verifyFilePaths(inputFilePath, outputFilePath))
      CSV.open(outputFilePath, 'wb') do |csv|
        csv << ["Account ID", "First Name", "Created On", "Status", "Status Set On"]
        #Iterate through provided csv
        CSV.foreach((inputFilePath), headers: true, col_sep: ",") do |curInputCsvRow|
          parsedWebResponse = @mergeRestService.retrieveAccountsFromWpApi(restApiUrl, curInputCsvRow["Account ID"])
          if (parsedWebResponse)
            csv << [curInputCsvRow["Account ID"], curInputCsvRow["First Name"], curInputCsvRow["Created On"], parsedWebResponse["status"], parsedWebResponse["created_on"]]
          end
        end
      end
    end
  end

  ##
  # Verifies the input file and output directory exist
  def verifyFilePaths(inPath, outPath)
    if (!inPath || !File.exist?(inPath))
      print ("Invalid input path provided.  Goodbye")
      return false
    end
    if (!outPath)
      print ("No output path provided.  Goodbye")
      return false
    end
    outDir = File.dirname(outPath)
    if (!File.directory?(outDir))
      print ("Directory: " + outDir + " does not exist.  Goodbye")
      return false
    end
    return true
  end

end
