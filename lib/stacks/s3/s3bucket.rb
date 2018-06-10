module S3Stack
  module S3Bucket
    extend ActiveSupport::Concern

    included do

      variable :environment,
               default: "production",
               value: "#{ENV["ENVIRONMENT"]}"

      description "S3 #{environment} stack"

      resource :my_s3_bucket,
               amount: 10,
               type: "AWS::S3::Bucket" do |r, index|
        
        r.property(:name) { "MyAmazingBucket#{index+1}" }
      end
    end
  end
end
