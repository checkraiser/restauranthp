class ChiPhiView < ActiveRecord::Base
  self.table_name = 'chi_phi_views'
  def self.refresh
    Scenic.database.refresh_materialized_view(table_name, concurrently: true)
  end
  private

  # this isn't strictly necessary, but it will prevent
  # rails from calling save, which would fail anyway.
  def readonly?
    true
  end
end
