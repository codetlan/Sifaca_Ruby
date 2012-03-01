class AddColumnsToClient < ActiveRecord::Migration
  def change
    add_column :clients, :name, :string

    add_column :clients, :rfc, :string

    add_column :clients, :street, :string

    add_column :clients, :num_ext, :string

    add_column :clients, :num_int, :string

    add_column :clients, :colony, :string

    add_column :clients, :delegation, :string

    add_column :clients, :state, :string

    add_column :clients, :cp, :integer

    add_column :clients, :logo_emp, :string

    add_column :clients, :qr, :string

    add_column :clients, :username, :string

  end
end
