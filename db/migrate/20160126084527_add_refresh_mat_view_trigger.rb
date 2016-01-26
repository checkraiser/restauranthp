class AddRefreshMatViewTrigger < ActiveRecord::Migration
  def up
  	execute <<-SQL
  	 create or replace function refresh_chi_phi_view()
      returns trigger language plpgsql
      as $$
      begin
          refresh materialized view concurrently chi_phi_views ;
          return null;
      end $$;

      create trigger refresh_chi_phi_view
      after insert or update or delete or truncate
      on chi_phis for each statement 
      execute procedure refresh_chi_phi_view();

      create or replace function refresh_nhap_view()
      returns trigger language plpgsql
      as $$
      begin
          refresh materialized view concurrently nhap_views ;
          return null;
      end $$;

      create trigger refresh_chi_phi_view
      after insert or update or delete or truncate
      on nhaps for each statement 
      execute procedure refresh_nhap_view();

      create or replace function refresh_doanh_thu_view()
      returns trigger language plpgsql
      as $$
      begin
          refresh materialized view concurrently doanh_thu_views ;
          return null;
      end $$;

      create trigger refresh_doanh_thu_view
      after insert or update or delete or truncate
      on doanh_thus for each statement 
      execute procedure refresh_doanh_thu_view();
  	SQL
  end

  def down
    execute <<-SQL
      drop function refresh_chi_phi_view() cascade;
      drop function refresh_nhap_view() cascade;
      drop function refresh_doanh_thu_view() cascade;
    SQL
  end
end
