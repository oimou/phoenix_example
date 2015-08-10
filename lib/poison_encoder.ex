defimpl Poison.Encoder, for: Any do
  def encode(%{__meta__: _} = struct, options) do
    IO.inspect struct
    map = struct
          |> Map.from_struct
          |> sanitize_map
    Poison.Encoder.Map.encode(map, options)
  end

  defp sanitize_map(map) do
    Map.drop(map, [:__meta__, :__struct__])
  end
end

