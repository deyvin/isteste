class AlterStudentFieldStatusToString < ActiveRecord::Migration
  def change
      change_column :students, :status, :string
  end
end
