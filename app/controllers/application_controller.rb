class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_side_menu

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  private
  def set_side_menu
    @side_menu = helpers.reference_data_sub_menu_navigation_items
  end
end
