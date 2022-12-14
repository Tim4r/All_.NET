using Mushroom_picking.Connection;
using Mushroom_picking.Views;
using System.Windows;

namespace Mushroom_picking
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        
        private void BtnSighIn_Click(object sender, RoutedEventArgs e)
        {
            if (DataAccess.LogIn(textBox_login.Text, textBox_password.Text))
            {
                SearchDelete searchDelete = new SearchDelete();
                Hide();
                searchDelete.Show();
            }
            else
            {
                MessageBox.Show("Invalid Username or Password", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                textBox_login.Clear();
                textBox_password.Clear();
            }
        }
    }
}
