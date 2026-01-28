class MainController < ApplicationController
  def index
    @total_lists = ReferenceDataIndex::DATA.count
    @categories = ReferenceDataIndex.grouped_by_category
    @total_categories = @categories.count
  end
end
