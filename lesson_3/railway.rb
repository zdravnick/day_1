class Station
  attr_reader :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def remove_train(train)
    @trains.delete(train)
  end

  def trains_by_type(type)
    @trains.select do |train|
      train.type == type
    end
  end
end

class Train
  attr_reader :type, :speed, :size, :current_route, :current_station
  attr_accessor :stations

  module TYPES
    PASSENGER = 'passenger'
    FREIGHT = 'freight'
  end

  def initialize(name, type, size)
    @name = name
    @type = type
    @size = size
    @speed = 0
    @current_route = nil
    @current_station = nil
  end

  def increase_speed(speed)
    @speed += speed
  end

  def brake
    @speed = 0
  end

  def add_vagon
    @size += 1 if @speed == 0
  end

  def remove_vagon
    @size -= 1 if @speed == 0
  end

  def set_current_route(route)
    @current_route = route
    @current_station = route.stations.first
  end

  def remove_current_route
    @current_route = nil
  end

  def next_index
    @next_index = @current_route.stations.index(@current_station) + 1
  end

  def previous_index
    @previous_index = @current_route.stations.index(@current_station) - 1
  end

  def move_forward
    if @current_station == @current_route.stations.last
      puts "Вы прибыли в пункт назначения"
    else
    # next_index = @current_route.stations.index(@current_station) + 1
    @current_station = @current_route.stations[next_index]
    end
  end

  def move_backward
    if @current_station == @current_route.stations.first
      puts "Вы вернулись в пункт отправки"
    else
    @current_station = @current_route.stations[previous_index]
    end
  end

  def next_station
    if @current_station == @current_route.stations.last
      puts "Конечная станция"
    else
    @next_station = @current_route.stations[next_index]
    end
  end

  def previous_station
    if @current_station == @current_route.stations.first
      puts "Станция отправления"
    else
    @previous_station = @current_route.stations[previous_index]
    end
  end
end

class Route
  attr_accessor :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(station)
    if station != @stations.first && station != @stations.last
      @stations.delete(station)
    else
      puts 'Начальную и конечную станцию удалить нельзя'
    end
  end
end

# это что-то вроде тестирования ) порядком уменьшает работу в консоли
#
station = Station.new('Msk')
station.add_train(Train.new(1, Train::TYPES::PASSENGER, 5))
station.add_train(Train.new(2, Train::TYPES::FREIGHT, 10))

t = station.trains.first

t.set_current_route(Route.new('Msk', 'Spb'))
t.current_route.add_station('Smol')
t.current_route.add_station('Pyatkino')

puts "Вы на станции #{t.current_station}, следующая: #{t.next_station}"


