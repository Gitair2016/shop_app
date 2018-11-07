class AddPasswordDigestToVips < ActiveRecord::Migration[5.2]
  def change
    add_column :vips, :password_digest, :string
  end
end
