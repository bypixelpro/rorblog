class AddBodyToPosts < ActiveRecord::Migration[5.1]
  def change
    #Añade una columna, a la tabla post, con el nombre body del tipo text
    add_column :posts, :body, :text
  end
end
