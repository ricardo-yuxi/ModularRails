Deface::Override.new(:virtual_path => "layouts/dwl/application",
                    :name => "add_orders_link_to_nav",
                    :insert_after => "[data-dwl-hook='main_nav']",
                    :partial => "overrides/orders_link",
                    :namespaced => true,
                    :original => 'f5fe48b6dc6986328e0b873b3ffa1b228dd52a7c')
