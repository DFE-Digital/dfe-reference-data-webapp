class GuidesController < ApplicationController
  GUIDES = %w[countries schools local_authorities passports initial_training_providers].freeze

  def index
    @guides = GUIDES
  end

  def show
    @guide = params[:guide]

    unless GUIDES.include?(@guide)
      render plain: "Guide not found", status: :not_found
      return
    end

    render @guide
  end

  def about
    @side_menu = []
    render "about/index"
  end

  private
  def set_side_menu
    @side_menu = helpers.guides_sub_menu_navigation_items
  end
end
