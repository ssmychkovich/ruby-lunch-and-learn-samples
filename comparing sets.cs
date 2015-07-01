

HashSet<int> set = new HashSet<int>();
HashSet<int> set2 = new HashSet<int>();

set.Add(1);
set.Add(3);
set.Add(4);

foreach (int item in (new int[] { 1, 3, 4}))
{
    set2.Add(item);
}

Console.WriteLine("number of elements in set=" + set.Count);
Console.WriteLine(String.Format("Are the sets equal? {0} ", set.SetEquals(set2)));

