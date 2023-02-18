# frozen_string_literal: true

module KazeClient
  # @author ciappa_m@modulotech.fr
  # Assign a performer to the given job.
  # @see KazeClient::Request
  # @see KazeClient::Utils::FinalRequest
  # @see KazeClient::Utils::AuthentifiedRequest
  # @since 0.1.0
  class AssignPerformerRequest < Utils::FinalRequest
    include Utils::AuthentifiedRequest

    def initialize(id, performer_user_id)
      super(:post, "api/jobs/#{id}/performers")

      @body = {
        job: {
          performer_user_id: performer_user_id.to_s
        }
      }
    end
  end
end
