
require_relative '../aws-profiles.rb'

#describe AWSProfiles do
#  describe AWSProfiles.settings do
    puts AWSProfiles.all_settings
    puts AWSProfiles.profile_settings 'dev', 'us-west-2'
#  end
#end
