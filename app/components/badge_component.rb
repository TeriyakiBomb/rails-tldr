# frozen_string_literal: true

class BadgeComponent < ApplicationComponent
  option :type, default: proc { "info" }
end
