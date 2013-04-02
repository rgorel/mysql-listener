require 'database'

class Member < ActiveRecord::Base
  MIGRATION_STATUSES = {
    not_migrated: 0,
    migrating: 1,
    migrated: 2
  }

  scope :migrating, where(migration_status: MIGRATION_STATUSES[:migrating])
end
