ActiveSupport.on_load(:active_record) do
  def self.acts_as_permalinkable source_column = :name, target_column = :permalink
    validates target_column, presence: true, uniqueness: true
    before_validation :set_permalink, if: Proc.new{ |record| record.send(target_column).blank? }
    define_method(:to_param){ send(target_column) }
    protected define_method(:set_permalink){
      src = send(source_column)
      send("#{target_column}=", src.parameterize.presence || SecureRandom.hex(3) )
    }
  end
end