class Order < ApplicationRecord
    #
    ## Pre-defined data
    #
    enum pay_type: {
        "Check"          => 0, 
        "Credit card"    => 1, 
        "Purchase order" => 2
    }

    #
    ## Model Relationships
    #
    has_many :line_items, dependent: :destroy

    #
    ## Validation  
    #
    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys

    #
    ## Methods within the Order controller
    #
    def add_line_items_from_cart(cart)
        cart.line_items.each do |item|
            item.cart_id = nil
            line_items << item
        end
    end
end
