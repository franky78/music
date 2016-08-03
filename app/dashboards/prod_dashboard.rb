require "administrate/base_dashboard"

class ProdDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    video: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    mp3: PaperclipField,
    description: Field::Text,
    order: Field::Number,
    prod_link: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :video,
    :id,
    :title,
    :mp3,
    :attachment,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :video,
    :id,
    :title,
    :mp3,
    :attachment,
    :description,
    :order,
    :prod_link,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :video,
    :title,
    :mp3,
    :attachment,
    :description,
    :order,
    :prod_link,
  ].freeze

  # Overwrite this method to customize how prods are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(prod)
  #   "Prod ##{prod.id}"
  # end
end
