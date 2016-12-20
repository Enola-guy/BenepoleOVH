class ChangeFormatStatusFestival < ActiveRecord::Migration
  def change
  	change_column :festivals, :status, :string
  end
end
#enlevé le type boolean du status des andid'
#sur materialize je vais mettre juste option "ouver/fermé