# frozen_string_literal: true

require 'rails_helper'

module TagFilters
  RSpec.describe DestroyJob, type: :job do
    subject(:job) { described_class.perform_later }

    it 'queues the job' do
      expect { job }.to have_enqueued_job(described_class)
    end
  end
end
