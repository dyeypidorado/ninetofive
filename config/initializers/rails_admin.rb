# RailsAdmin config file. Generated on July 31, 2012 03:18
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_admin } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, Admin

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, Admin

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Ninetofive', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Admin, Affiliate, Campaign, Category, List, Mercury::Image, Page, Product, Referral, Setting, StaticPage, Status, Step, Subscriber]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Admin, Affiliate, Campaign, Category, List, Mercury::Image, Page, Product, Referral, Setting, StaticPage, Status, Step, Subscriber]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Admin do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :email, :string 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Affiliate do
  #   # Found associations:
  #     configure :lists, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :code, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Campaign do
  #   # Found associations:
  #     configure :product, :belongs_to_association 
  #     configure :steps, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :trigger_code, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :product_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Category do
  #   # Found associations:
  #     configure :products, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model List do
  #   # Found associations:
  #     configure :subscriber, :belongs_to_association 
  #     configure :affiliate, :belongs_to_association 
  #     configure :product, :belongs_to_association 
  #     configure :step, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :page_id, :integer 
  #     configure :subscriber_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :status_code, :integer 
  #     configure :confirmation_code, :string 
  #     configure :affiliate_id, :integer         # Hidden 
  #     configure :is_fb, :boolean 
  #     configure :product_id, :integer         # Hidden 
  #     configure :step_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Mercury::Image do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :image_file_name, :string         # Hidden 
  #     configure :image_content_type, :string         # Hidden 
  #     configure :image_file_size, :integer         # Hidden 
  #     configure :image_updated_at, :datetime         # Hidden 
  #     configure :image, :paperclip 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Page do
  #   # Found associations:
  #     configure :product, :belongs_to_association 
  #     configure :step, :belongs_to_association 
  #     configure :list, :has_one_association 
  #     configure :subscribers, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :content, :text 
  #     configure :status_code, :integer 
  #     configure :product_id, :integer         # Hidden 
  #     configure :link_code, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :page_type, :integer 
  #     configure :step_id, :integer         # Hidden 
  #     configure :sidebar, :text   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Product do
  #   # Found associations:
  #     configure :category, :belongs_to_association 
  #     configure :campaigns, :has_many_association 
  #     configure :lists, :has_many_association 
  #     configure :subscribers, :has_many_association 
  #     configure :page, :has_one_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :slug, :string 
  #     configure :category_id, :integer         # Hidden 
  #     configure :image_file_name, :string 
  #     configure :image_content_type, :string 
  #     configure :image_file_size, :integer 
  #     configure :image_updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Referral do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :code, :string 
  #     configure :link, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Setting do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :var, :string 
  #     configure :value, :text 
  #     configure :thing_id, :integer 
  #     configure :thing_type, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model StaticPage do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :name, :string 
  #     configure :region1, :text 
  #     configure :region2, :text 
  #     configure :region3, :text 
  #     configure :region4, :text 
  #     configure :region5, :text 
  #     configure :slug, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Status do
  #   # Found associations:
  #     configure :page, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :value, :string 
  #     configure :page_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Step do
  #   # Found associations:
  #     configure :next_step, :belongs_to_association 
  #     configure :campaign, :belongs_to_association 
  #     configure :page, :has_one_association 
  #     configure :lists, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :promotion_name, :string 
  #     configure :next_id, :integer         # Hidden 
  #     configure :is_first, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :campaign_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Subscriber do
  #   # Found associations:
  #     configure :lists, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :email, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :slug, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
