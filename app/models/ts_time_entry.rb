
class TsTimeEntry < TimeEntry
  belongs_to :order, :class_name => 'WorkOrder', :foreign_key => 'order_id'

  default_scope { where("#{TsTimeEntry.table_name}.order_id IS NOT NULL") }
end
