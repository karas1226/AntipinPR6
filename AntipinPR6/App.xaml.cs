using System.Configuration;
using System.Data;
using System.Windows;

namespace AntipinPR6
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static string conn = "Host=127.0.0.1;Port=5432;DataBase=antipin;Username=postgres;Password=postgres";

        public static string user;
    }

}
