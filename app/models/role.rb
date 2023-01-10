class Role < ActiveRecord::Base
  has_many :auditions

  def actors 
    self.auditions.map do |a|
        a.actor
    end
  end

  def locations
    self.auditions.map do |l|
        l.location
    end
end

    def lead
        self.auditons.find_by(hired: "true").first || 'no actor has been hired for this role'
    end

    def understudy
        self.auditions.find_by(hired: "true").second || 'no actor has been hired for this role'
    end

end