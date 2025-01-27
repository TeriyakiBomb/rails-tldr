# frozen_string_literal: true

class TldrContainerComponent < ApplicationComponent
  renders_one :tldr

  option :current_page
end
