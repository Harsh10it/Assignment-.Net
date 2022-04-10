// to read a file in C#
using System;
using System.IO;

class Program
{
	static void Main(string[] args)
	{
		// Store the path of the textfile in your system
		string file = @"G:\8th sem\New folder\assign\C#-Dotnet-Part1\Sample.txt";

		Console.WriteLine("Reading File using File.ReadAllText()");

		// To read the entire file at once
		if (File.Exists(file))
		{
			// Read all the content in one string
			// and display the string
			string str = File.ReadAllText(file);
			Console.WriteLine(str);
		}
		Console.WriteLine();

		Console.WriteLine("Reading File using StreamReader");
		// By using StreamReader
		if (File.Exists(file))
		{
			// Reads file line by line
			StreamReader Textfile = new StreamReader(file);
			string line;

			while ((line = Textfile.ReadLine()) != null)
			{
				Console.WriteLine(line);
			}

			Textfile.Close();
			Console.WriteLine();

			string rootdir = @"G:\8th sem\New folder\assign\C#-Dotnet-Part1";

			// get the list of files
			string[] files = Directory.GetFiles(rootdir);
			Console.WriteLine(String.Join(Environment.NewLine, files));

			// get the list of directories
			string[] dirs = Directory.GetDirectories(rootdir);
			Console.WriteLine(String.Join(Environment.NewLine, dirs));


			Console.ReadKey();
		}
		Console.WriteLine();
	}
}
