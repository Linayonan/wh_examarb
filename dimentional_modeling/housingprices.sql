Table fct_Housingprice {
  housingprice_id INTEGER [primary key]
  region_id INTEGER [ref: >dim_region.region_id]
  year_id INTEGER [ref: >dim_year.year_id]
  pricing_id FLOAT [ref: >dim_pricing.pricing_id]
}

Table dim_region {
  region_id INTEGER [primary key]
  region INTEGER [not null]
}

Table dim_year {
  year_id INTEGER [primary key]
  year INTEGER [not null]
}

Table dim_pricing {
  pricing_id INTEGER [primary key]
  apartment_area_persqm FLOAT [not null]
  land_price_persqm FLOAT [not null]
  buildning_price_persqm FLOAT [not null]
}