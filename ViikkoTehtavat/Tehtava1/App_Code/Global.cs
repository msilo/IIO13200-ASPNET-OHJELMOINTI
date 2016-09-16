using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Global
/// </summary>
public static class Global
{
    private static string title;

    public static string Title
    {
        get { return title; }
    }

    private static double kate;

    public static double Kate
    {
        get { return kate; }
    }

    private static double lasiNelioHinta;

    public static double LasiNelioHinta
    {
        get { return lasiNelioHinta; }
    }

    private static double alKarJuokHinta;

    public static double AlKarJuokHinta
    {
        get { return alKarJuokHinta; }
    }

    private static double tyoMenekki;

    public static double TyoMenekki
    {
        get { return tyoMenekki; }
    }


    static Global()
    {
        title = WebConfigurationManager.AppSettings["Title"];
        kate = Double.Parse(WebConfigurationManager.AppSettings["Kate"]);
        lasiNelioHinta = Double.Parse(WebConfigurationManager.AppSettings["LasiNelioHinta"]);
        alKarJuokHinta = Double.Parse(WebConfigurationManager.AppSettings["AlKarJuokHinta"]);
        tyoMenekki = Double.Parse(WebConfigurationManager.AppSettings["TyoMenekki"]);
    }
}