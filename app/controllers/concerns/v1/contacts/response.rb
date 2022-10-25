# frozen_string_literal: true

module V1
  module Contacts
    # Response for Contacts Controller
    module Response
      extend ActiveSupport::Concern

      def update_and_render_contact(contact)
        contact.update(params) &&
          render(:update, locals: { contact: })
      end

      def create_and_render_contact(contact)
        contact.save &&
          render(:create, status: :created, locals: { contact: })
      end

      def render_invalid_response
        head(:unprocessable_entity)
      end
    end
  end
end
