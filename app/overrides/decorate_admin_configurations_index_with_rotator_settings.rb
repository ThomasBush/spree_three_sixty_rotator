Deface::Override.new(virtual_path: 'spree/admin/shared/sub_menu/_configuration',
                     name: 'add_rotator_settings_to_admin_menu',
                     insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
                     text: '<%= configurations_sidebar_menu_item Spree.t(:rotator_settings_admin), spree.admin_rotator_settings_url %>')
