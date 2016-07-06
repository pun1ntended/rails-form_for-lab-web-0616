Rails.application.routes.draw do

  get 'students/new' => 'students#new', as: 'new_student'

  get 'students' => 'students#index', as: 'students'

  post 'students' => 'students#create'

  get 'students/:id/edit' => 'students#edit', as: 'edit_student'

  patch 'students/:id' => 'students#update'

  get 'students/:id' => 'students#show', as: 'student'


  get 'school_classes/new' => 'school_classes#new', as: 'new_school_class'

  get 'school_classes' => 'school_classes#index', as: 'school_classes'

  post 'school_classes' => 'school_classes#create'

  get 'school_classes/:id/edit' => 'school_classes#edit', as: 'edit_school_class'

  patch 'school_classes/:id' => 'school_classes#update'

  get 'school_classes/:id' => 'school_classes#show', as: 'school_class'

end
