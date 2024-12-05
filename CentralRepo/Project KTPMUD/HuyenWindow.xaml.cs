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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Project_KTPMUD
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class HuyenWindow : Window
    {
        private bool isMenuVisible = true; // Biến trạng thái của menu
        public HuyenWindow()
        {
            InitializeComponent();
            MenuColumn.Width = new GridLength(0);
        }


        private void ToggleMenuButton_Click(object sender, RoutedEventArgs e)
        {
            if (MenuColumn.Width.Value == 0)
            {
                // Mở rộng thanh menu
                MenuColumn.Width = new GridLength(250); // Đặt chiều rộng mong muốn (ví dụ: 250px)
                ToggleMenuButton.Content = "✕"; // Đổi biểu tượng nút
            }
            else
            {
                // Thu hẹp thanh menu
                MenuColumn.Width = new GridLength(0); // Thu hẹp về 0
                ToggleMenuButton.Content = "☰"; // Đổi lại biểu tượng nút
            }
        }


        private void UserIconButton_Click(object sender, RoutedEventArgs e)
        {

        }

        // Sự kiện nhấn nút tìm kiếm
        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (SearchTextBox.Text == "Nhập từ khóa để tìm kiếm" && SearchTextBox.IsFocused)
            {
                SearchTextBox.Text = "";
                SearchTextBox.Foreground = Brushes.Black;
                SearchTextBox.CaretIndex = 0; // Đặt con trỏ tại đầu
            }
            else if (string.IsNullOrWhiteSpace(SearchTextBox.Text) && !SearchTextBox.IsFocused)
            {
                SearchTextBox.Text = "Nhập từ khóa để tìm kiếm";
                SearchTextBox.Foreground = Brushes.Gray;
            }
        }
        private void UserDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string searchText = SearchTextBox.Text;
            // Logic tìm kiếm của bạn ở đây
            MessageBox.Show("Bạn đang tìm kiếm: " + searchText);
        }
        private void ToggleSection1_Click(object sender, RoutedEventArgs e)
        {
            Section1Details.Visibility = Section1Details.Visibility == Visibility.Visible
                                         ? Visibility.Collapsed
                                         : Visibility.Visible;
            ToggleSection1Button.Content = Section1Details.Visibility == Visibility.Visible
                                            ? "Quản lý quy hoạch nước sạch và vệ sinh môi trường nông thôn ▲"
                                            : "Quản lý quy hoạch nước sạch và vệ sinh môi trường nông thôn ▼";
        }

        private void ToggleSection2_Click(object sender, RoutedEventArgs e)
        {
            Section2Details.Visibility = Section2Details.Visibility == Visibility.Visible
                                         ? Visibility.Collapsed
                                         : Visibility.Visible;
            ToggleSection2Button.Content = Section2Details.Visibility == Visibility.Visible
                                            ? "Quản lý thông tin về nước sạch và vệ sinh môi trường nông thôn ▲"
                                            : "Quản lý thông tin về nước sạch và vệ sinh môi trường nông thôn ▼";
        }

        private void ToggleSection3_Click(object sender, RoutedEventArgs e)
        {
            Section3Details.Visibility = Section3Details.Visibility == Visibility.Visible
                                         ? Visibility.Collapsed
                                         : Visibility.Visible;
            ToggleSection3Button.Content = Section3Details.Visibility == Visibility.Visible
                                            ? "Báo cáo thống kê về CSDL nước sạch và vệ sinh môi trường nông thôn ▲"
                                            : "Báo cáo thống kê về CSDL nước sạch và vệ sinh môi trường nông thôn ▼";
        }

        private void ToggleSection4_Click(object sender, RoutedEventArgs e)
        {
            Section4Details.Visibility = Section4Details.Visibility == Visibility.Visible
                                         ? Visibility.Collapsed
                                         : Visibility.Visible;
            ToggleSection4Button.Content = Section4Details.Visibility == Visibility.Visible
                                            ? "Quản lý Văn bản pháp luật về CSDL nước sạch và vệ sinh môi trường nông thôn ▲"
                                            : "Quản lý Văn bản pháp luật về CSDL nước sạch và vệ sinh môi trường nông thôn ▼";
        }

        private void ToggleSection5_Click(object sender, RoutedEventArgs e)
        {
            Section5Details.Visibility = Section5Details.Visibility == Visibility.Visible
                                         ? Visibility.Collapsed
                                         : Visibility.Visible;
            ToggleSection5Button.Content = Section5Details.Visibility == Visibility.Visible
                                            ? "Quản lý CSDL các cơ sở chăn nuôi ▲"
                                            : "Quản lý CSDL các cơ sở chăn nuôi ▼";
        }
        // Mở Popup khi click vào biểu tượng người dùng
        private void UserButton_Click(object sender, RoutedEventArgs e)
        {
            // Mở hoặc đóng Popup
            UserMenuPopup.IsOpen = !UserMenuPopup.IsOpen;
        }

        // Xử lý khi chọn "Chỉnh sửa thông tin cá nhân"
        private void EditProfileMenuItem_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Chức năng chỉnh sửa thông tin cá nhân!", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        // Xử lý khi chọn "Đăng xuất"
        private void LogoutMenuItem_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show(
                "Bạn có chắc chắn muốn đăng xuất không?",
                "Đăng xuất",
                MessageBoxButton.YesNo,
                MessageBoxImage.Question
            );

            if (result == MessageBoxResult.Yes)
            {
                // Thực hiện hành động đăng xuất (ví dụ: đóng cửa sổ hiện tại và mở cửa sổ đăng nhập)


                MainWindow MainWindow = new MainWindow();
                MainWindow.Show();
                this.Close();

            }
        }
        private void NavigateToPage1_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new Uri("PageD1/Page2.xaml", UriKind.Relative));
        }


    }
}
