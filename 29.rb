class DownloaderBase
  def self.inherited(sub_class)
    super(sub_class)
    sub_classes.push(sub_class)
  end

  def self.sub_classes
    @sub_classes ||= []
  end

  private_class_method(:sub_classes)
end