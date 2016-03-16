Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  name: "rotator_link_admin_product_form",
  insert_bottom: "[data-hook='admin_product_form_left']",
  partial: "spree/admin/products/rotator_url",
  original: 'd15e8881a009c5e287070eb034df4c7a81b52758',
  disabled: false)
