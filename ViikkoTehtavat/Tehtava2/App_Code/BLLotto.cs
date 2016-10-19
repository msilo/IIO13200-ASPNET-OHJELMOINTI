using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLottocs
/// </summary>
public class BLLotto
{
    public BLLotto()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    
    public List<int> Lottery(int mode)
    {
        List<int> list = new List<int>();
        switch (mode)
        {
            case 0:
                list = Suomi();
                break;
            case 1:
                list = Viking();
                break;
            default:
                throw new Exception("Mode not defined");
            break;
        }

        return list;
    }

    private List<int> Suomi()
    {
        List<int> list = new List<int>();
        Random random = new Random();
        int dice = 0;
        for (int i = 0; i<7; i++)
        {
            dice = random.Next(1, 40);
            // While list does not containt value of dice
            list.Add(dice);
        }

        return list;
    }

    private List<int> Viking()
    {
        List<int> list = new List<int>();
        return list;
    }

    private void Universal(int n, int min, int max)
    {

    }


}