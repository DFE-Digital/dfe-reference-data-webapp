class DataController < ApplicationController
  def index
    @total_lists = ReferenceDataIndex::DATA.count
    @categories = ReferenceDataIndex.grouped_by_category
    @total_categories = @categories.count
  end
  def show
    @data_item = ReferenceDataIndex.find_by_id(params[:id])

    if @data_item.nil?
      render plain: "Not found", status: :not_found
      return
    end

    @reference_data = @data_item[:class]
    @show_technical_fields = params[:show_technical].present?
  end
end
