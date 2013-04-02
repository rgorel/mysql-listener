require 'member'

class Worker

  def migration_event?
    puts @event.inspect
    false
  end

  def process_event(event)
    @event = event
    migrate_user if migration_event?
    @event = nil
  end

  def migrate_user
    puts "migrating #{user.name}"
  end


end
