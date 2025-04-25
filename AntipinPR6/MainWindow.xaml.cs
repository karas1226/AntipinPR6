using Npgsql;
using System;
using System.Reflection.Metadata;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AntipinPR6
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly string conn = "Host=127.0.0.1;Port=5432;Database=antipin;Username=postgres;Password=postgres";
        public MainWindow()
        {
            InitializeComponent();

        }

        private void btnEnter_Click(object sender, RoutedEventArgs e)
        {
            using (var connection = new NpgsqlConnection(conn))
            {
                connection.Open();
                string com = $"select password from users where login = '{txtLogin.Text}'";
                using (var comm = new NpgsqlCommand(com, connection))
                {
                    using (var reader = comm.ExecuteReader())
                    {
                        reader.Read();
                        string pass = reader.GetString(0);
                        if (pass == txtPass.Text)
                        {
                            Window1 window1 = new Window1();
                            window1.ShowDialog();
                            this.Close();
                        }
                        else
                        {
                            txtPass.Text = "Пароль неверный";
                        }
                    }
                }
            }
        }
    }
}