# frozen_string_literal: true

module KazeClient
  # @author chevre_a@modulotech.fr
  # Retrieve a job document from a job.
  # @see KazeClient::Request
  # @see KazeClient::Utils::FinalRequest
  # @see KazeClient::Utils::AuthentifiedRequest
  # @since 0.3.0
  class JobDocumentRequest < Utils::FinalRequest
    include Utils::AuthentifiedRequest

    def initialize(job_id, job_document_id)
      super(:get, "api/jobs/#{job_id}/documents/#{job_document_id}")
    end
  end
end
