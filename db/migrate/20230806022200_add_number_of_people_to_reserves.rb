class AddNumberOfPeopleToReserves < ActiveRecord::Migration[6.0]
  def change
    add_column :reserves, :number_of_people, :integer
  end
end
