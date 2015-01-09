using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace TestyJezyka
{
    class Program
    {

        static private bool IsLeapYear(int year) { return (((year % 4) == 0) && !((year % 100) == 0)) || ((year % 400) == 0);}


        static void Main(string[] args)
        {
            //Console.WriteLine(string.Format("Rok {0} przestępny - {1}", 1900, IsLeapYear(1900)));
            //Console.WriteLine(string.Format("Rok {0} przestępny - {1}", 1980, IsLeapYear(1980)));
            //Console.WriteLine(string.Format( "Rok {0} przestępny - {1}", 1999,  IsLeapYear(1999)));
            //Console.WriteLine(string.Format("Rok {0} przestępny - {1}", 2000, IsLeapYear(2000)));
            //Console.ReadLine();
            //return;

            using (var ctx = new RozlZEEEntities())
            {
                //Can perform CRUD operation using ctx here..

                //Miasto lm = from miasta in ctx.Miasto select miasta;
                const string strWarunek = "GDA";
                            
                var lm = (from m in ctx.Miasto where !m.Nazwa.ToUpper().StartsWith(strWarunek) orderby m.Nazwa descending select m);
                foreach (var miasto in lm)
	            {
		            Console.WriteLine(miasto.Nazwa);
                }
                Console.WriteLine();

                var lnm = (from nm in lm select nm.Nazwa).ToArray<string>().Reverse();
                foreach (var nm in lnm)
                {
                    Console.WriteLine(nm) ;
                }


                int[] ia = new int[10] { 1, 2, 3, 4, 5, 6, 7 ,8 ,9 ,0 };

                long suma = ia.  Where((i, index) =>  i % 2 != 0 && index < 5).Sum(i => (long)i);
                Console.WriteLine();
                Console.WriteLine( suma.ToString() ?? ((int)-1).ToString());


                //zmiana w programie do testów GIT

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
