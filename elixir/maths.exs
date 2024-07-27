defmodule Module.Math do
    def sum(param1, param2), do: param1 + param2
    
    def times(param1, param2), do: param1 * param2
    
    def power(num), do: power(num, 1) 
    
    def power(num, 13), do: IO.puts(".")
    def power(num, it) do
        IO.puts("#{num} x #{it} = #{num * it}")
        power(num, it + 1)
    end
end

