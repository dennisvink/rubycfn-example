module DnsStack
  extend ActiveSupport::Concern
  include Rubycfn

  included do
    include DnsStack::Parameters
    include DnsStack::HostedZone
    include DnsStack::SES
    include DnsStack::Outputs
  end
end
