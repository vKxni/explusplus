# Elixir++ WIP
A simple attempt to build a bridge between Elixir (mix) and C++.

## Vectors

Elixir
```elixir
def dot(a, b) do
    Enum.zip(a, b)
    |> Enum.map(fn {ea, eb} -> ea * eb end)
    |> Enum.reduce(&Kernel.+/2)
end
```

C++
```cpp
double dot(const vector<double> &a, const vector<double> &b)
{
    double result = 0.0d;
    for (int i = 0; i < a.size(); ++i) 
    {
        result += a[i] * b[i];    
    }
    return result;
}
```