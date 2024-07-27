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

    def condition(value) do
        # if
        """ 
        if value == 1 do
            puts("One")
        else
            if value == 2 do
                puts("Two")
            else 
                puts("Number")
            end
        end 
        """
        
        # case
        """
        case value do
            1 -> puts("One")
            2 -> puts("Two")
            _ -> puts("Other number")
        end
        """

        # Cond
        cond do
            value < 6 -> puts("1 - 5")
            value < 11 -> puts("6 - 10")
            true -> puts("Number > 10")
        end
    end
end