defmodule Home.MixProject do
  use Mix.Project

  # this is the script for elixir that runs our cpp file
  def run(_args) do
    {result, _errcode} = System.cmd("g++",
      ["--std=c++11",
        "-O3",
        "-fpic",
        "-shared",
        "-o", "nativly.so",
        "native_lib/nativly.cpp"
      ], stderr_to_stdout: true)
    IO.puts(result)
  end
end

  def project do
    [
      app: :home,
      description: "Simple bridge, elixir vs c++",
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      compilers: [:nativly] ++ Mix.compilers
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Home.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
     # none
    ]
  end
end
