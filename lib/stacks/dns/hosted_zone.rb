module DnsStack
  module HostedZone
  extend ActiveSupport::Concern

  included do

    # Set stack description. The environment variable
    # is a global variable exposed by lib/shared_concerns/global_variables.rb
    description "Route53 #{environment} Stack"

    # Create a hosted zone for our domain name
    resource :hosted_zone,
             type: "AWS::Route53::HostedZone" do |r|
        r.property(:hosted_zone_config) do
          {
            Comment: [
              "Hosted Zone for #{environment} ",
              "DomainName".ref
            ].fnjoin
          }
        end
        r.property(:name) { "DomainName".ref }
      end
    end
  end
end
