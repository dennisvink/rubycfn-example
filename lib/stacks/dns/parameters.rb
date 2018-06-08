module DnsStack
  module Parameters
    extend ActiveSupport::Concern

    included do
      parameter :domain_name,
                default: "example.com",
                description: "Domain name for the HostedZone"
    end
  end
end
