
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = "alert alert-danger"
  config.button_class = "btn btn-default"
  config.boolean_label_class = nil

  config.wrappers :vertical_form, tag: "div", class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "control-label"

    b.use :input, class: "form-control"
    b.use :error, wrap_with: { tag: "span", class: "help-block" }
    b.use :hint, wrap_with: { tag: "p", class: "help-block" }
  end

  config.wrappers :vertical_file_input, tag: "div", class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly