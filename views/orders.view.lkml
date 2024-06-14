
# views/events.view.lkml
measure: count {
  type: count
  drill_fields: [events.id, events.user_id, events.event_type, products.name, products.category]
}

# views/products.view.lkml
measure: count {
  type: count
  drill_fields: [products.id, products.name, products.category]
}
