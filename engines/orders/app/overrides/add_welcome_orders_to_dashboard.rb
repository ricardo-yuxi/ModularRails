Deface::Override.new(:virtual_path => "dwl/dashboard/index",
                    :name => "add_welcome_orders_to_dashboard",
                    :insert_after => "[data-dwl-hook='dashboard']",
                    :partial => "overrides/welcome_orders",
                    :namespace => true,
                    :original => '0b48a8b6533fc2f84993c7628d3a9afd326f6760')
