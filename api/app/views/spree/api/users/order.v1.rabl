object @order
extends "spree/api/orders/order"

child :line_items => :line_items do
  extends "spree/api/line_items/show"
end

# Necessary for backend's order interface
node :permissions do
  { can_update: current_ability.can?(:update, root_object) }
end
