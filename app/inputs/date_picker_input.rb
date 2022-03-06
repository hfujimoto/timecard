class DatePickerInput < SimpleForm::Inputs::Base
    def input(wrapper_options)
      template.content_tag(:div, class: 'input-group date') do
        template.concat div_button
        template.concat @builder.text_field(attribute_name, input_html_options)
      end
    end
  
    def input_html_options
      has_errors? ? super.merge({class: 'form-control col-span-3 is-invalid', data: { controller: "flatpickr", flatpickr_date_format: "Y-m-d" }, id: "#{object_name}_#{attribute_name}"}) : super.merge({class: 'form-control col-span-3', data: { controller: "flatpickr", flatpickr_date_format: "Y-m-d" }, id: "#{object_name}_#{attribute_name}"})
    end
  
    def div_button
      template.content_tag(:div, class: 'input-group-text') do
        template.concat icon_table
      end
    end
  
    def icon_remove
      "<i class='glyphicon glyphicon-remove'></i>".html_safe
    end
  
    def icon_table
      "<i class='fa fa-calendar'></i>".html_safe
    end
  
  
  
  end