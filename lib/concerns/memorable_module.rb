module Memorable
    module Createable
        def initialize
            self.class.all << self
        end
    end

    module Paramable
        def to_param
            name.downcase.gsub(' ', '-')
        end
    end

    module ClassMemorable

    def reset_all
        self.all.clear
    end

    def count
        self.all.count
    end

    def find_by_name(name)
        self.all.detect{|a| a.name == name}
      end

    end
end