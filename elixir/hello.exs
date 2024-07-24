defmodule HelloModule do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias Module.Math, as: ZMath

    require Integer

    def hello do
        inspect(ZMath.sum(3, 5))
    end

    def even(number) do 
        IO.puts("#{number} is #{Integer.is_even(number)}")
    end

    defp inspect(param) do 
        puts("Start")
        puts(param)
        puts("End")
    end
end