class DataController < ApplicationController
  def show
    @data_item = ReferenceDataIndex.find_by_id(params[:id])

    if @data_item.nil?
      render plain: "Not found", status: :not_found
      return
    end

    @reference_data = @data_item[:class]
  end
end
