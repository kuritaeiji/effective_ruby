class Version
  include(Comparable)

  attr_accessor(:major, :minor, :patch)

  def initialize(version)
    @major, @minor, @patch = version.split('.').map(&:to_i)
  end

  def <=>(other)
    return nil unless other.is_a?(Version)

    [major <=> other.major, minor <=> other.minor, patch <=> other.patch].detect { |n| !n.zero? } || 0
  end
end

versions = ['1.0.0', '1.11.1', '1.9.0'].map { |version| Version.new(version) }
puts(versions.sort)