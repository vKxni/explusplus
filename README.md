# ExPlusPlus (Elixir++)
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

## Compile
```
g++ -O3 -fpic -shared -o nativly.so natifly.cpp
```
## Terminal 
```
iex(1)> Home.benchmark
For N = 1000000:
=============
Elixir took 0.283104s
Native took 0.05946s
```
