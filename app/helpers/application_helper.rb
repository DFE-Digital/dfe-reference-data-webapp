module ApplicationHelper
  def main_menu_navigation_items
    [
      {
        href: "/about/index",
        text: "Data in DfE SD",
        classes: "ml-auto"
      },
      {
        href: "/",
        text: "Hardcoded reference data",
        classes: "ml-auto"
      },
      {
        href: "/guides",
        text: "Data usage guides",
        classes: "ml-auto"
      }
    ]
  end

  def reference_data_sub_menu_navigation_items
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

  def guides_sub_menu_navigation_items
    data = {
      "Countries" => [
        { id: "countries", name: "Using country data" }
      ],
      "'Almost' reference data" => [
        { id: "schools", name: "School list from GIAS" },
        { id: "local_authorities", name: "Local authorities" }
        # { id: "post_codes", name: "Post codes" },
      ],
      "Miscellaneous data" => [
        { id: "passports", name: "Passports list" },
        { id: "initial_training_providers", name: "Initial Teacher Training providers (ITT)" }
        # { id: "teaching_school_hubs", name: "Teaching school hubs" },
        # { id: "recruitment_cycles", name: "Recruitment cycles" },
      ]
    }

    items = []

    data.each do |category, data_items|
      items << { header: category }

      data_items.each do |data_item|
        items << {
          href: "/guides/#{data_item[:id]}",
          text: data_item[:name],
          classes: ""
        }
      end
    end

    items
  end
end
