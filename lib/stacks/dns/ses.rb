module DnsStack
  module SES
    extend ActiveSupport::Concern
    included do

      # Create a SES configuration set after the HostedZone
      # has been created (DependsOn)
      resource :hosted_zone_ses,
               type: "AWS::SES::ConfigurationSet" do |r|
        r.depends_on "HostedZone"
        r.property(:name) { ["HostedZone".ref, "_SESConfigurationSet"].fnjoin }
      end
    end
  end
end
