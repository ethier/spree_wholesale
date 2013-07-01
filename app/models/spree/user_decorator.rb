Spree::User.instance_eval do

  scope :wholesale, lambda { includes(:roles).where("spree_roles.name" => "wholesaler") }


end

Spree::User.class_eval do

  def wholesaler?
    has_spree_role?("wholesaler")
  end

end
