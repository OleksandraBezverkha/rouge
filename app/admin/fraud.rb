ActiveAdmin.register Fraud do
  permit_params :name,:firstname,:lastname,:patronymic,:icq,:type,:status,:description,:user_id,:cards
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  form do |f|
    f.input :firstname
    f.input :lastname
    f.input :patronymic
    f.input :icq
    f.input :type
    f.input :name
    f.input :description

    # f.input :emails
    # f.input :skypes
    # f.input :phones
    f.has_many :cards do |app_f|
      app_f.text_field :card
    end
    f.actions
  end

end
