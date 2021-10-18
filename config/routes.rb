Rails.application.routes.draw do
  
devise_for :customers,skip: [:passwords,], controllers: {
  registrations: "customers/registrations",
  sessions: 'customers/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  
end