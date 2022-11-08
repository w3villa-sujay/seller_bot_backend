require 'rufus-scheduler'
require_relative '../../app/services/db_populate/update_items_table_service'



s = Rufus::Scheduler.singleton

s.every '1m' do
    Rails.logger.info "hello, it's #{Time.now}"
    Rails.logger.flush
    puts 'logando'
  end

  s.every '10m' do
    puts 'atualizando DB'
    DbPopulate::UpdateItemsTableService.call
  end
  