class Logpos
  VERSION = '1.0.0'

  module TripleArray
    extend self
    TP = Struct.new(:time, :pos)
    @array = Array.new(3, TP.new)

    def push time, pos
      return false if include? time

      @array[0..1] = @array[1..2]
      @array[2] = TP.new(time,  pos)
      @array
    end

    def include? time
      !!@array.detect {|tp| tp.time == time }
    end

    def oldest
      @array.sort {|a, b| a.time <=> b.time }[0]
    end
  end


end
