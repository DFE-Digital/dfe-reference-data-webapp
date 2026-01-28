module ApplicationHelper
  def main_menu_navigation_items

    [
      # {
      #   href: '/foo',
      #   text: "Main data - hardcoded lists",
      #   classes: "ml-auto",
      # },
      # {
      #   href: '/foo',
      #   text: "",
      #   classes: "ml-auto",
      # },
    ]
  end

  def sub_menu_navigation_items
    items = []

    ReferenceDataIndex.grouped_by_category.each do |category, data_items|
      items << { header: category }

      data_items.each do |data_item|
        items << {
          href: "/data/#{data_item[:id]}",
          text: data_item[:name],
          classes: ""
        }
      end
    end

    items
  end
end
