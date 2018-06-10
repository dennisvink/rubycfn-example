module S3Stack
  module S3Bucket
    extend ActiveSupport::Concern

    included do
      # Example variable definition
      variable :bucket_suffix,
               default: "-bucket", 
               value: ENV["BUCKET_SUFFIX"]

      description "S3 #{environment} stack"

      # Create a total of 10 S3 buckets with name property set
      resource :my_s3_bucket,
               amount: 10,
               type: "AWS::S3::Bucket" do |r, index|

        r.property(:name) { "MyAmazingBucket#{index+1}#{bucket_suffix}" }
      end

      # Create 5 more S3 buckets for which AWS dynamically names the bucket
      resource :other_s3_bucket,
               amount: 5,
               type: "AWS::S3::Bucket"
    end
  end
end
