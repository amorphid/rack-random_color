class RandomColor
  def call(env)
    [
      200,
      { 'Content-Type' => "application/json"},
      [ { color: set_color }.to_json ]
    ]
  end

  def set_color
    arr = ["#"]
    6.times { arr << rand(16).to_s(16) }
    arr.join
  end
end
