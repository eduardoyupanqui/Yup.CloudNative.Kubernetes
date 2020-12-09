using System;
using System.Threading;

namespace TestApp.Cli
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Running migrations...");
            Thread.Sleep(30_000);
            Console.WriteLine("Migrations complete!");
        }
    }
}