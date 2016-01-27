class NhapView < ActiveRecord::Base
  self.table_name = 'nhap_matview'
  def self.refresh
    Scenic.database.refresh_materialized_view(table_name, concurrently: true)
  end
  def self.report(fromdate, todate)
    fd = fromdate.strftime('%Y-%m-%d')
    td = todate.strftime('%Y-%m-%d')
    tmp = connection.execute "Select * From nhap_usp('#{fd}','#{td}');"
    #tmp.values.map {|i| {:date => i[0], :balance => i[1]}}
    tmp.values.inject(0) do |sum, item|
      sum += item[1].to_i
    end
  end
  private

  # this isn't strictly necessary, but it will prevent
  # rails from calling save, which would fail anyway.
  def readonly?
    true
  end
end
