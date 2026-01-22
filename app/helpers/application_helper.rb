module ApplicationHelper
  def main_menu_navigation_items

    [
      {
        href: '/foo',
        text: "Main data - hardcoded lists",
        classes: "ml-auto",
      },
      {
        href: '/foo',
        text: "",
        classes: "ml-auto",
      },
    ]
  end

  def sub_menu_navigation_items
    [
      {
        header: "Important things",
      },
      {
        legend: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur arcu erat, accumsan id imperdiet et, porttitor at semub_manu",
      },
      {
        href: '/foo',
        text: "Some section",
        classes: "",
      },
      {
        href: '/foo',
        text: "Another section",
        classes: "",
      },
    ]
  end
end
