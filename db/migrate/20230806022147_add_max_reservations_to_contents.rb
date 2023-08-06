class AddMaxReservationsToContents < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :max_reservations, :integer
  end
end
