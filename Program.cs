namespace mydockerapp;
using System;
using System.Threading;

class Program
{
    static void Main(string[] args)
    {
        int x=0;
        while (true)
        {
            Console.WriteLine("Process is running>>>>..."+args[0]);
            Thread.Sleep(2000);
            x++;
        }
        
    }
}
