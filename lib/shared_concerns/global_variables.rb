module Concerns
  module GlobalVariables
    extend ActiveSupport::Concern

    included do
      variable :environment,
               default: "production",
               global: true,
               value: ENV["ENVIRONMENT"]
    end
  end
end
