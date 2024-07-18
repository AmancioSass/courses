defmodule HelloModule do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias Module.Math, as: ZMath

    def hello do
        inspect(ZMath.sum(3, 5))
    end

    def inspect(param) do 
        puts("Start")
        puts(param)
        puts("End")
    end
end