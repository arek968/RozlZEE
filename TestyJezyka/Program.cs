using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace TestyJezyka
{
    class Program
    {
        static void Main(string[] args)
        {

            using (var ctx = new RozlZEEEntities())
            {
                //Can perform CRUD operation using ctx here..

                //Miasto lm = from miasta in ctx.Miasto select miasta;
                const string warunek = "GDA";
                            
                var lm = (from m in ctx.Miasto where !m.Nazwa.ToUpper().StartsWith(warunek) orderby m.Nazwa descending select m);
                foreach (var miasto in lm)
	            {
		            Console.WriteLine(miasto.Nazwa);
                }
                Console.WriteLine();

                var lnm = (from nm in lm select nm.Nazwa).ToArray<string>().Reverse();
                foreach (var nm in lnm)
                {
                    Console.WriteLine(nm);
                }


                /*while (true)
                {
                    string[] sa = new string[10]; // { "1", "2", "3", "4", "5", "6", "7" };

                    Console.WriteLine("Lista losowych liczb");
                    Random rnd = new Random();
                    for (int i = 0; i < sa.Length; i++)
                    {
                        sa[i] = rnd.Next(10).ToString();
                    }
                    foreach (var st in sa)
                    {
                        Console.WriteLine(st.ToUpper());
                    }

                    Console.WriteLine();
                    Console.WriteLine("Lista odwrócona");
                    var sa1 = sa.Reverse();
                    foreach (var st in sa1)
                    {
                        Console.WriteLine(st.ToUpper());
                    }

                    Console.WriteLine();
                    Console.WriteLine("Lista posortowana");
                    IEnumerable<string> sa2 = sa.OrderByDescending(str => str);
                    foreach (var st in sa2)
                    {
                        Console.WriteLine(st.ToUpper());
                    }

                    Console.WriteLine();
                    Console.WriteLine("Lista wybranych, unikatowych elementów");
                    IEnumerable<string> sa3 = (from str in sa2 where (str != "5" && str != "6") select str).Distinct();
                    foreach (string st in sa3)
                    {
                        Console.WriteLine(st.ToUpper());
                    }


                    Console.ReadLine();
                    Console.Clear();
                }*/
                Console.ReadLine();
            }
        }
    }
}
