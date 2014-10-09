require 'json'

module AWSProfiles

  def self.profiles
    config = File.read File.expand_path( "~/.aws/config")
    profiles = {}
    profile = nil
    config.each_line do |line|
      match = line.match /\[profile ([^\]]+)\]/
      if match
        profile = match[1]
        profiles[profile] ||= Hash.new(profile_name: profile)
        next
      end
      next unless profile
      if match = line.match(/^\s*^([^=\s]+)\s*=\s+(.+)$/)
        profiles[profile][match[1]] = match[2]
      end
    end
    return profiles
  end
  
  def self.regions 
    [ 'us-east-1', 'us-west-1', 'us-west-2' ]
  end

  def self.profile_settings profile_name, region
    profile = profile_name if profile_name.kind_of? Hash
    profile ||= profiles[profile_name] 
    {  
       access_key_id: profile['aws_access_key_id'], 
       secret_access_key: profile['aws_secret_access_key'],
       region: region
    }
  end

  def self.all_settings
    set = []
    profiles.each do |name, profile|
      regions.each do |region|
        set << profile_settings(profile, region)
      end
    end
    set
  end

  

end
