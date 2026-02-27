namespace :product1 do
  desc "TODO"
  task cleanup_inactive_product1: :environment do
    Product1.update_all(is_active:true)
  end

end
