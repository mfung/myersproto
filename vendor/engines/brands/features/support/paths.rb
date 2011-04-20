module NavigationHelpers
  module Refinery
    module Brands
      def path_to(page_name)
        case page_name
        when /the list of brands/
          admin_brands_path

         when /the new brand form/
          new_admin_brand_path
        else
          nil
        end
      end
    end
  end
end
