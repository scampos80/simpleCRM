ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :notes, :image

  index do
    selectable_column # Checkbox
    column :id
    column :image do |customer| # include thumb image
      image_tag(customer.image,width:50,height:50)
    end
    column :name
    column :phone
    column :email
    column :notes
    column :created_at
    column :updated_at
    actions # view, edit, delete
 end

  # Formtastic!
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
