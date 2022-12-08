class Bench 
    def initialize(name, timeAfk, timeWork)
        @name = name
        @timeAfk = timeAfk
        @timeWork = timeWork
    end

    def name
        @name
    end

    def timeAfk
        @timeAfk
    end

    def timeWork
        @timeWork
    end

    def timeAfk=(timeAfk)
        @timeAfk = timeAfk
    end

    def timeWork=(timeWork)
        @timeWork = timeWork
    end
end

factory = Array.new

factory << Bench.new('Broaching machine', 0, 10)
factory << Bench.new('Drill press', 5, 5)
factory << Bench.new('Gear shaper', 4, 4)
factory << Bench.new('Hobbing machine', 0, 8)
factory << Bench.new('Hone', 0, 5)
factory << Bench.new('Lathe', 2, 8)

totalAfkTime = 0
totalTime = 0
factory.each {|f| totalAfkTime += f.timeAfk}
factory.each {|f| totalTime += f.timeWork}
totalTime += totalAfkTime

puts 'Total amout of downtime: ' + totalAfkTime.to_s

puts 'List of all benches without downtime: '
factory.each {|f| puts f.name if f.timeAfk == 0}

puts 'relative amout of downtime: '
factory.each {|f| puts f.name + ' ' + (f.timeAfk.to_f/totalAfkTime.to_f * 100).round.to_s + '%'}

puts 'relative amount of total downtime: ' + (totalAfkTime.to_f / totalTime * 100).round.to_s + '%'