   M S B A M L   `   `   `  ����I  EProject KTPMUD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Project_KTPMUDProject_KTPMUD  5   	       Project_KTPMUD.DangKy   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Project_KTPMUD     5   	     � Title$  DangKy��5   	   $	��265��6   $	��381��6%   $
��Bold"�61    � 
ResizeMode$ NoResize=�5	   	   ��5
      �� 5   
    �� ImageSource$ /Images/country.jpg��6   .��5      � $��	19,0,4,21q�6   $	��195��6   $��Bottom=�6+    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Họ và Tên:��6   $��Right=�5      $��Center=�5      $��0,5,10,5q�5      $
��Bold"�5       $��0��5!      $��0��6    �� 5"   
   -   5         ��Name$ FullNameTextBox��5"      $
��Left=�5#      $��Center=�5$      $	��200��5%      $��0,5,10,5q�5&      $��1��5'      $��0��6"   �� 5)   
   $��Tên Đăng Nhập:��6   $��Right=�5*      $��Center=�5+      $��0,5,10,5q�5,      $
��Bold"�5-      $��0��5.      $��1��6    �� 5/   
   -   5        $ UsernameTextBox��5/      $
��Left=�50      $��Center=�51      $	��200��52      $��0,5,10,5q�53      $��1��54      $��1��6"   �� 56   
   $��Mật Khẩu:��6   $��Right=�57      $��Center=�58      $��0,5,10,5q�59      $
��Bold"�5:      $��0��5;      $��2��6    G� 5<   
   -   5         G�Name$ PasswordBox��5<      $
��Left=�5=      $��Center=�5>      $	��200��5?      $��0,5,10,5q�5@      $��1��5A      $��2��6&    G� PasswordChar$ *��63   �� 5C   
   $��Xác Nhận Mật Khẩu:��6   $��Right=�5D      $��Center=�5E      $��0,5,10,5q�5F      $
��Bold"�5G      $��0��5H      $��3��6    G� 5I   
   -   5        $ ConfirmPasswordBox��5I      $
��Left=�5J      $��Center=�5K      $	��200��5L      $��0,5,10,5q�5M      $��1��5N      $��3��6&   $ *��63   �� 5P   
   -   5        $��
Đăng Ký��5P      $��Center=�5Q      $��Center=�5R      $	��100��5S      $��30��5T      $��0,20,0,5q�5U      $��2��5W      $��4��5X      
�������6   5Y      5\      