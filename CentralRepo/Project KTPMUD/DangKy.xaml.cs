using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
using System.Windows.Shapes;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
namespace Project_KTPMUD
{
    /// <summary>
    /// Interaction logic for DangKy.xaml
    /// </summary>
    public partial class DangKy : Window
    {
        public DangKy()
        {
            InitializeComponent();
        }

        Modify modify = new Modify();

        // Check account
        public bool checkAccount(string account)
        {
            return Regex.IsMatch(account, "^[a-zA-Z0-9]{3,25}$");
        }

        private void RegisterButton_Click(object sender, RoutedEventArgs e)
        {
           
            string fullName = FullNameTextBox.Text;
            string username = UsernameTextBox.Text;
            string password = PasswordBox.Password;
            string confirmPassword = ConfirmPasswordBox.Password;

            if (!checkAccount(fullName))
            {
                MessageBox.Show("Vui lòng nhập tên dài khoảng 3 đến 25 ký tự, với chữ hoa và chữ thường.");
                return;
            }
            if (!checkAccount(username))
            {
                MessageBox.Show("Vui lòng nhập tên tài khoản dài khoảng 3-25 ký tự, bao gồm chữ cái và chữ số.");
                return;
            }
            if (!checkAccount(password))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu dài khoảng 3-25 ký tự, bao gồm chữ cái và chữ số.");
                return;
            }
            if (confirmPassword != password)
            {
                MessageBox.Show("Vui lòng xác nhận mật khẩu chính xác!");
                return;
            }
            if (modify.TaiKhoans(" Select * from TaiKhoan where Username = '"+username+"'").Count != 0)
            {
                MessageBox.Show("Tên đăng nhập đã được sử dụng. Vui lòng chọn một tên đăng nhập khác.");
                return;
            }
            try
            {
                MessageBox.Show("Check");
                string query = "Insert into TaiKhoan values ('"+username+"','"+password+"')";
                modify.Command(query);
                MessageBoxResult result = MessageBox.Show("Đăng ký thành công! Bạn có muốn đăng nhập luôn không?", "Thông báo", MessageBoxButton.YesNo);
                if (result == MessageBoxResult.Yes)
                {
                    // Mở cửa sổ đăng nhập
                    MainWindow loginWindow = new MainWindow();
                    loginWindow.Show();
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xảy ra lỗi: " + ex.Message);
            }
        }
    }

}