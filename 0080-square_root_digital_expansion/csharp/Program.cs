using System.Diagnostics;
using System.Numerics;

public class Program
{
    private static Dictionary<int, BigInteger> sqrtCache = new Dictionary<int, BigInteger>();

    public static BigInteger Jarvis(uint x, BigInteger precision)
    {
        BigInteger a = x * 5;
        BigInteger b = 5;

        while (b < precision)
        {
            if (a >= b)
            {
                a -= b;
                b += 10;
            }
            else
            {
                a *= 100;
                b *= 10;
                b -= 45;
            }
        }

        return b;
    }

    public static BigInteger ComputeRoot(int n, BigInteger precision)
    {
        if (sqrtCache.TryGetValue(n, out var cachedRoot))
        {
            return cachedRoot;
        }

        BigInteger root = n switch
        {
            0 => 0,
            1 => 1,
            _ => Jarvis((uint)n, precision)
        };

        sqrtCache[n] = root;
        return root;
    }

    public static int CountDigits(BigInteger x, int numDigits)
    {
        var str = x.ToString();
        int sum = 0;
        for (int i = 0; i < Math.Min(numDigits, str.Length); i++)
        {
            sum += str[i] - '0';
        }
        return sum;
    }

    public static void Main()
    {
        int maxNumber = 100;
        int digits = 100;

        var stopwatch = Stopwatch.StartNew();

        BigInteger precision = BigInteger.Pow(10, digits + 15);
        List<BigInteger> roots = new List<BigInteger>(maxNumber + 1);
        for (int i = 0; i <= maxNumber; i++)
            roots.Add(0);

        int sum = 0;
        for (int i = 2; i <= maxNumber; i++)
        {
            int intSqrt = (int)Math.Sqrt(i);
            if (intSqrt * intSqrt == i)
            {
                roots[i] = intSqrt * precision;
                continue;
            }

            int factor = intSqrt - 1;
            while (factor > 1 && i % factor != 0)
                factor--;

            if (factor > 1)
            {
                roots[i] = roots[i / factor] * roots[factor];
                var length1 = roots[i].ToString().Length;
                var length2 = roots[i - 1].ToString().Length;
                if (length1 > length2)
                {
                    roots[i] /= BigInteger.Pow(10, length1 - length2);
                }
                while (roots[i] < roots[i - 1])
                {
                    roots[i] *= 10;
                }
            }
            else
            {
                roots[i] = ComputeRoot(i, precision);
            }

            sum += CountDigits(roots[i], digits);
        }

        stopwatch.Stop();
        System.Console.WriteLine(stopwatch.Elapsed);
        Console.WriteLine(sum);
    }
}
