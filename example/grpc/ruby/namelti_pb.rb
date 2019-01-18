# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: namelti.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "namelti.server.NameltiTranscriptRequest" do
    optional :query, :string, 1
  end
  add_message "namelti.server.NameltiTranscriptRequests" do
    repeated :queries, :string, 1
  end
  add_message "namelti.server.ResultList" do
    repeated :results, :message, 1, "namelti.server.ResultList.Result"
  end
  add_message "namelti.server.ResultList.Result" do
    optional :yomi, :string, 1
    optional :score, :float, 2
  end
  add_message "namelti.server.NameltiTranscriptResponse" do
    optional :surface, :string, 1
    optional :results, :message, 2, "namelti.server.ResultList"
  end
  add_message "namelti.server.NameltiTranscriptResponses" do
    map :responses, :string, :message, 1, "namelti.server.ResultList"
  end
end

module Namelti
  module Server
    NameltiTranscriptRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.NameltiTranscriptRequest").msgclass
    NameltiTranscriptRequests = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.NameltiTranscriptRequests").msgclass
    ResultList = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.ResultList").msgclass
    ResultList::Result = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.ResultList.Result").msgclass
    NameltiTranscriptResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.NameltiTranscriptResponse").msgclass
    NameltiTranscriptResponses = Google::Protobuf::DescriptorPool.generated_pool.lookup("namelti.server.NameltiTranscriptResponses").msgclass
  end
end
