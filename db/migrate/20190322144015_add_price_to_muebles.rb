class AddPriceToMuebles < ActiveRecord::Migration[5.2]
  def change
    add_monetize :muebles, :price, currency: { present: false }
  end
end
