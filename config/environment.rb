# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SunsUpSolar::Application.initialize!

#Set the Phoner default country code
Phoner::Phone.default_country_code = '1'