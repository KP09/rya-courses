class AddSchoolIdToSchoolAdmins < ActiveRecord::Migration[5.1]
  def change
    change_table :school_admins do |t|
      t.references :school, foreign_key: true
    end
  end
end
