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
    public partial class AdminWindow : Window
    {
        private bool isMenuVisible = true; // Biến trạng thái của menu
        public AdminWindow()
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
    }
}
