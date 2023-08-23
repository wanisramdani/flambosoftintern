class ProductDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "Product.id", cond: :eq },
      name: { source: "Product.name", cond: :like },
      price: { source: "Product.price", cond: :eq },
      quantity: { source: "Product.quantity", cond: :eq },
    }
  end

  def data
    records.map do |record|
      {
        # example:
        id: record.id,
        name: record.name,
        price: record.price,
        quantity: record.quantity
      }
    end
  end

  def get_raw_records
    # insert query here
    Product.all
  end

end
