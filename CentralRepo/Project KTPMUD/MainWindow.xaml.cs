using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Project_KTPMUD
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        Modify modify = new Modify();

        private void LogInButton_Click(object sender, RoutedEventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Password;

            if (username == string.Empty)
            {
                MessageBox.Show("Vui lòng nhập tên đăng nhập!");
            }
            else if (password == string.Empty)
            {
                MessageBox.Show("Vui lòng nhập mật khẩu!");
            }
            else
            {

                string query = " Select * from TaiKhoan where Username = '" + username + "' and Password ='" + password + "' ";
                if (modify.TaiKhoans(query).Count != 0)
                {
                    MessageBox.Show("Đăng nhập thành công!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                    if ((bool)AdminRadioButton.IsChecked)
                    {
                        // Mở cửa sổ dành cho Admin
                        AdminWindow adminWindow = new AdminWindow();
                        adminWindow.Show();
                        this.Close();
                    }
                    else if ((bool)XaRadioButton.IsChecked)
                    {
                        // Mở cửa sổ dành cho Đơn vị hành chính cấp Xã
                        XaWindow xaWindow = new XaWindow();
                        xaWindow.Show();
                        this.Close();
                    }
                    else if ((bool)HuyenRadioButton.IsChecked)
                    {
                        // Mở cửa sổ dành cho Đơn vị hành chính cấp Huyện
                        HuyenWindow huyenWindow = new HuyenWindow();
                        huyenWindow.Show();
                        this.Close();
                    }
                    else
                    {

                        MessageBox.Show("Vui lòng chọn vai trò đăng nhập!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("Tên tài khoản hoặc mật khẩu không chính xác!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }


        }

        private void LogInButton_Click2(object sender, RoutedEventArgs e)
        {
            OpenRegisterWindow();
        }
        private void OpenRegisterWindow()
        {
            DangKy registerWindow = new DangKy();
            registerWindow.Show();
        }
    }
}