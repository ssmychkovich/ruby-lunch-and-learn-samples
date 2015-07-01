//Monsternize

public static class MyExtensions
{
    public static string Monsternize(this String str)
    {
        var chars = str.ToCharArray();
        int hashCode = (new Object()).GetHashCode();
        Random rand = new Random(hashCode);

        for(int i = 0;i<chars.Length;i++){
            int number = rand.Next();

            if ((number % 2) == 0)
            {
                chars[i] = Char.ToLower(chars[i]);
            }
            else
            {
                chars[i] = Char.ToUpper(chars[i]);
            }
        }

        return new string(chars);
    }
}


namespace ConsoleApplication2
{

    
    class Program
    {
        static void Main(string[] args)
        {
            string str = "hello world";

            foreach (var i in Enumerable.Range(0, 12))
            {
                Console.WriteLine(str.Monsternize());
            }

        }
    }
}
