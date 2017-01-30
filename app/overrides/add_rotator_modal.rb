Deface::Override.new(:virtual_path => 'spree/products/show',
                     name: 'adds_rotator_modal',
                     insert_bottom: "[data-hook='product_right_part']",
                     partial: 'products/rotator_modal',
                     original: '9a3be2e75159e2ffc7197b844bb606694bb6475c',
                     disabled: false)

Deface::Override.new(:virtual_path => 'spree/products/show',
                     name: 'adds_rotator_modal_link',
                     insert_before: "[data-hook='product_properties']",
                     partial: 'products/rotator_link')

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_code_to_product_show',
                     :set_attributes => "[data-hook='product_show']",
                     :attributes => {'data-product-rotator-url' =>
                            "<%= @product.rotator_url %>"})
