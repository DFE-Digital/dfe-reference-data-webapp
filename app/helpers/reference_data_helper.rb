module ReferenceDataHelper
  def render_reference_data(data)
    if reference_list?(data)
      render_reference_list(data)
    elsif data.is_a?(Hash)
      render_hash_data(data)
    elsif data.is_a?(Array)
      render_array_data(data)
    else
      content_tag(:p, "Unknown data type: #{data.class}")
    end
  end

  def reference_list?(data)
    data.respond_to?(:all) && data.respond_to?(:schema)
  end

  def render_reference_list(data)
    records = data.all
    return content_tag(:p, "No records found") if records.empty?

    # Get all unique keys from records
    all_keys = records.flat_map { |r| r.keys }.uniq

    content_tag(:div, class: "reference-list") do
      safe_join([
        render_list_metadata(data),
        render_records_table(records, all_keys, data)
      ])
    end
  end

  def render_list_metadata(data)
    parts = []

    if data.list_description.present?
      parts << content_tag(:p, data.list_description, class: "govuk-body-l")
    end

    if data.list_docs_url.present?
      parts << content_tag(:p, class: "govuk-body") do
        link_to("View documentation", data.list_docs_url, class: "govuk-link", target: "_blank", rel: "noopener noreferrer")
      end
    end

    if data.list_usage_guidance.present?
      parts << content_tag(:details, class: "govuk-details") do
        safe_join([
          content_tag(:summary, "Usage guidance", class: "govuk-details__summary"),
          content_tag(:div, data.list_usage_guidance, class: "govuk-details__text")
        ])
      end
    end

    safe_join(parts)
  end

  def render_records_table(records, keys, data)
    content_tag(:div, class: "govuk-table-container") do
      content_tag(:table, class: "govuk-table") do
        safe_join([
          render_table_header(keys, data),
          render_table_body(records, keys)
        ])
      end
    end
  end

  def render_table_header(keys, data)
    content_tag(:thead, class: "govuk-table__head") do
      content_tag(:tr, class: "govuk-table__row") do
        safe_join(keys.map do |key|
          header_text = key.to_s.humanize
          if data.respond_to?(:field_description) && data.field_description(key)
            content_tag(:th, class: "govuk-table__header", title: data.field_description(key)) do
              header_text
            end
          else
            content_tag(:th, header_text, class: "govuk-table__header")
          end
        end)
      end
    end
  end

  def render_table_body(records, keys)
    content_tag(:tbody, class: "govuk-table__body") do
      safe_join(records.map do |record|
        content_tag(:tr, class: "govuk-table__row") do
          safe_join(keys.map do |key|
            content_tag(:td, format_cell_value(record[key]), class: "govuk-table__cell")
          end)
        end
      end)
    end
  end

  def render_hash_data(data)
    content_tag(:div, class: "reference-list") do
      content_tag(:table, class: "govuk-table") do
        safe_join([
          content_tag(:thead, class: "govuk-table__head") do
            content_tag(:tr, class: "govuk-table__row") do
              safe_join([
                content_tag(:th, "Key", class: "govuk-table__header"),
                content_tag(:th, "Value", class: "govuk-table__header")
              ])
            end
          end,
          content_tag(:tbody, class: "govuk-table__body") do
            safe_join(data.map do |key, value|
              content_tag(:tr, class: "govuk-table__row") do
                safe_join([
                  content_tag(:td, format_cell_value(key), class: "govuk-table__cell"),
                  content_tag(:td, format_cell_value(value), class: "govuk-table__cell")
                ])
              end
            end)
          end
        ])
      end
    end
  end

  def render_array_data(data)
    content_tag(:div, class: "reference-list") do
      content_tag(:table, class: "govuk-table") do
        safe_join([
          content_tag(:thead, class: "govuk-table__head") do
            content_tag(:tr, class: "govuk-table__row") do
              safe_join([
                content_tag(:th, "Index", class: "govuk-table__header"),
                content_tag(:th, "Value", class: "govuk-table__header")
              ])
            end
          end,
          content_tag(:tbody, class: "govuk-table__body") do
            safe_join(data.each_with_index.map do |value, index|
              content_tag(:tr, class: "govuk-table__row") do
                safe_join([
                  content_tag(:td, index, class: "govuk-table__cell"),
                  content_tag(:td, format_cell_value(value), class: "govuk-table__cell")
                ])
              end
            end)
          end
        ])
      end
    end
  end

  def format_cell_value(value)
    case value
    when nil
      content_tag(:span, "nil", class: "text-muted")
    when Array
      if value.empty?
        content_tag(:span, "[]", class: "text-muted")
      else
        content_tag(:ul, class: "govuk-list govuk-list--bullet") do
          safe_join(value.map { |v| content_tag(:li, format_cell_value(v)) })
        end
      end
    when Hash
      content_tag(:dl, class: "govuk-summary-list govuk-summary-list--no-border") do
        safe_join(value.map do |k, v|
          content_tag(:div, class: "govuk-summary-list__row") do
            safe_join([
              content_tag(:dt, k.to_s, class: "govuk-summary-list__key"),
              content_tag(:dd, format_cell_value(v), class: "govuk-summary-list__value")
            ])
          end
        end)
      end
    when DateTime, Time, Date
      value.strftime("%Y-%m-%d")
    when Symbol
      content_tag(:code, value.to_s)
    when true, false
      content_tag(:code, value.to_s)
    else
      value.to_s
    end
  end
end
