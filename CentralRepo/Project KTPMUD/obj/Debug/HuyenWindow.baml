   M S B A M L   `   `   `  ����I  EProject KTPMUD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Project_KTPMUDProject_KTPMUD  5   	        Project_KTPMUD.HuyenWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Project_KTPMUD     5   	     � Title$  Window1��5   	   $	��650��6   $
��1100��6&   .��5	      �� $
��Auto=�6   $��Disabled=�66   
������ .��5   
   �  � RowDefinitions 5      �� 5      $��20 �6    �� 5      $��80 �6    �� 5      $	��220 �6    �� 5      $��80 �6    �� 5      $��* �6     � ColumnDefinitions 5      �� 5      -   5         ��Name$ 
MenuColumn��5   -   $��0 �6#    z� SharedSizeGroup$
 Menu��6A   �� 5      $��* �6#   $ Content��6-   .+�5      �� $��0��6   $��0��6"   ���	#FF00879D$��2��6I   5      �� 5"      $��3��6   $��0��6"   ���	#FF00879D$��2��6I   5#      �� 5&      $��4��6   $��0��6"   ���	#FF00879D$��2��6I   5'      �� 5)      -   5         ��Name$ SideMenu��5)   I   $��2��6   $��0��6"   ���	#FF00879D._�5*      �� $��10q�6   .+�5+      �� $��Tìm kiếm��6   $��0,10,0,0q�5,      $��40��5-      ���	#FF7CD0DA
�������$
��Bold"�50      �� 51      $��
Quản lý��6   $��0,10,0,0q�52      $��40��53      ���	#FF7CD0DA
�������$
��Bold"�56      �� 57      $��Trạng thái��6   $��0,10,0,0q�58      $��40��59      ���	#FF7CD0DA
�������$
��Bold"�5<      �� 5=      $��Lịch sử��6   $��0,10,0,0q�5>      $��40��5?      ���	#FF7CD0DA
�������$
��Bold"�5B      5C      5D      �� 5F      $��1��6   $��0��6"   ���	#FF7CD0DA$��2��6I   ._�5G      ��  �� Orientation$ 
Horizontal=�6   $��Center=�66   $
��Left=�6Q   $
��1090��6l   .+�5I      �� -   5         ��Name$ ToggleMenuButton��5I      $	��☰��5J      $��65��5K      $��66��5L      ���	#FF016987
�������$��35(�5O      $
��Bold"�5P      $��7,0,0,0q�5R      $��Center=�5S      $
��Left=�5T      �� 5V      $V��PChào mừng bạn đến với đơn vị quản lý hành chính cấp Huyện��6    $��30(�5W      $
��Bold"�5X      ���	#FF10545F$��Center=�5Z      $��10,0,0,0q�5[      �� 5]      $��41��6!    J� RenderTransformOrigin$ 0.5,0.5&�6,   z�5^      V� 5_      .~�5`   "   �� 	 �� ScaleX$	 -1Q�61   �� 5a   "   �� 5b   "   T� 5c   "   5d      .+�5f      �� $��	20,0,20,0q�6$   $y�Hidden=�67   5g      �� 5h      -   5        $ 
UserButton��5h      $
��👤��5i      $��67��5j      $��66��5k      ���	#FF016086
�������$��35(�5n      $
��Bold"�5o      5p      � 5s      -   5        
 �Name$
 UserMenuPopup��5s      $��Bottom=�63   ��.   � PlacementTarget 6F   ��  �� ElementName$ 
UserButton��.��5t      �� 
���   �$��1q�65   
�������._�5u      �� .+�5v   "   �� -   5        $'��!Cập nhật thông tin cá nhân��5v   )   $	��200��5x   %   $��50��5y   %   $��14(�5z   %   $
��10,5q�5{   %   ���#6CA6CD
���   �$
��Bold"�5   %   �� 5�   "   -   5        $��Đăng xuất��5�   )   $	��200��5�   %   $��50��5�   %   $��14(�5�   %   $
��10,5q�5�   %   ���#CD5555
���   �$
��Bold"�5�   %   5�      5�      5�      5�      5�      �� 5�      $��2��6   $��1��6"    �� CornerRadius$ 0,0,0,0��62   $	��265��6I   $��Center=�6V   $��	0,0,-23,0q�6q   ��5�      �� 5�       �� ImageSource$ Images/District.jpg��6!    j� Stretch$ UniformToFill=�6C   5�      �� 5�      $��3��6   $��1��6"   ���	#FFCFEAAA$��2��6I    �� Padding$ 10q�6]   ._�5�      �� $ 
Horizontal=�6   $��Center=�66   .+�5�      �� -   5         ��Name$ SearchTextBox��5�      $	��883��5�      $��40��5�      $��0,0,10,0q�5�      $��16(�5�      $��Center=�5�      .��5�   B   ��5�      �� 5�       �� 
TargetType" ��6$   .�5�   "   ��  �� Property � �� �� Value
 �   �6?   �� 5�   "    � ��$) #Nhập từ khóa để tìm kiếm��69    �� Triggers 5�   "   P� 5�   &    P� Property � �� P� Value$) #Nhập từ khóa để tìm kiếm��6>   . �5�   *   ��  � ��
 �����6G   5�   '   P� 5�   &    �@J�	IsFocused . . �5�   *   ��  � ��
 �   �6G   5�   '   5�      .��5�   )   5�      �� 5�      -	   5        $ SearchButton��5�      $��Tìm kiếm��5�      $	��170��5�      $��40��5�      ���	#FF016987
�������$��16(�5�      $��Center=�5�      5�      5�      5�      �� 5�      $��4��6   $��1��6"   ���	#FF94CA52._�5�      �� .+�5�      �� $��10q�6   
�������$ 10q�6<   ._�5�      �� .+�5�      �� -
   5        $ ToggleSection1Button��5�   %   $X��RQuản lý quy hoạch nước sạch và vệ sinh môi trường nông thôn ▼��5�   )   $��16(�5�   )   $
��Bold"�5�   )   
������ $��0q�5�   )   5�   )   �� 5�      -   5         ��Name$ Section1Details��5�   )   $y�	Collapsed=�6B   $��10,5,0,0q�6Y   .+�5�   "   �� $T��NQuản lý quy hoạch nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6o   $��0,5,0,0q�6�   �� 5�   "   $`��ZTìm kiếm thông tin quy hoạch nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6z   $��0,5,0,0q�6�   �� 5�   "   $g��aQuản lý và báo cáo về quy hoạch nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6}   $��0,5,0,0q�6�   �� 5�   "   -   5        $z��tQuản lý file đính kèm của báo cáo về quy hoạch nước sạch và vệ sinh môi trường nông thôn��5�   )   $��0,5,0,0q�5�   )   
������ $��0q�5�   )   
����  �$
��Left=�5�   )   5�   )   �� 5�   "   $`��ZQuản lý bản đồ quy hoạch nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6v   $��0,5,0,0q�6�   5�      5�      5�      �� 5�      $��10q�6   ���	#FFEDFFD4$ 10q�6@   ._�5�      �� .+�5�      �� -   5        $ ToggleSection2Button��5�   %   $[��UQuản lý thông tin về nước sạch và vệ sinh môi trường nông thôn▼��5�   )   $��16(�5�   )   $
��Bold"�5�   )   
������ $��0q�5�   )   5�   )   �� 5�      -   5        $ Section2Details��5�   )   $y�	Collapsed=�6B   $��10,5,0,0q�6Y   .+�5�   "   �� $O��IQuản lý công trình cấp nước sinh hoạt tập trung nông thôn��6,   $
��Wrap=�6m   $��0,5,0,0q�6�   �� 5�   "   $[��UTìm kiếm thông tin công trình cấp nước sinh hoạt tập trung nông thôn��6,   $
��Wrap=�6x   $��0,5,0,0q�6�   �� 5�   "   $6��0Quản lý công trình cấp nước nhỏ lẻ��6,   $
��Wrap=�6V   $��0,5,0,0q�6j   �� 5�   "   $B��<Tìm kiếm thông tin công trình cấp nước nhỏ lẻ��6,   $
��Wrap=�6a   $��0,5,0,0q�6u   �� 5�   "   $<��6Xem bản đồ phân bố công trình nước sạch��6,   $
��Wrap=�6[   $��0,5,0,0q�6o   �� 5�   "   $=��7Tra cứu công trình nước sạch trên bản đồ��6,   $
��Wrap=�6\   $��0,5,0,0q�6p   5�      5�      5�      �� 5�      $��10q�6   ���	#FFC6E69A$ 10q�6@   ._�5�      �� .+�5�      �� -   5        $ ToggleSection3Button��5�   %   $`��ZBáo cáo thống kê về CSDL nước sạch và vệ sinh môi trường nông thôn▼��5�   )   $��16(�5�   )   $
��Bold"�5�   )   
������ $��0q�5  )   5  )   �� 5     -   5        $ Section3Details��5  )   $y�	Collapsed=�6B   $��10,5,0,0q�6Y   .+�5  "   �� $2��,Thống kê về công trình nước sạch��6,   $
��Wrap=�6T   $��0,5,0,0q�6h   �� 5  "   $H��BBáo cáo thống kê công trình nước sạch theo thời gian��6,   $
��Wrap=�6h   $��0,5,0,0q�6|   �� 5  "   $Y��SSo sách công trình nước sạch theo thời gian (dưới dạng biểu đồ)��6,   $
��Wrap=�6s   $��0,5,0,0q�6�   �� 5  "   $E��?Quản lý báo cáo về chỉ số nước sạch nông thôn��6,   $
��Wrap=�6a   $��0,5,0,0q�6u   �� 5  "   $W��QQuản lý file đính kèm của báo cáo chỉ số nước sạch nông thôn��6,   $
��Wrap=�6p   $��0,5,0,0q�6�   �� 5	  "   $C��=Quản lý báo cáo thực hiện chỉ tiêu nước sạch��6,   $
��Wrap=�6`   $��0,5,0,0q�6t   �� 5
  "   $Z��TQuản lý file đính kèm của báo cáo thực hiện chỉ tiêu nước sạch��6,   $
��Wrap=�6r   $��0,5,0,0q�6�   5     5     5     �� 5     $��10q�6   ���	#FFCDF09E$ 10q�6@   ._�5     �� .+�5     �� -   5        $ ToggleSection4Button��5  %   $n��hQuản lý Văn bản pháp luật về CSDL nước sạch và vệ sinh môi trường nông thôn ▼��5  )   $��16(�5  )   $
��Bold"�5  )   
������ $��0q�5  )   5  )   �� 5     -   5        $ Section4Details��5  )   $y�	Collapsed=�6B   $��10,5,0,0q�6Y   .+�5  "   �� $p��jQuản lý văn bản pháp luật về quản lý nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6�   $��0,5,0,0q�6�   �� 5  "   $����Quản lý file đính kèm của văn bản pháp luật về quản lý nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6�   $��0,5,0,0q�6�   �� 5  "   $o��iTra cứu văn bản pháp luật về quản lý nước sạch và vệ sinh môi trường nông thôn��6,   $
��Wrap=�6�   $��0,5,0,0q�6�   5     5     5     �� 5"     $��10q�6   ���	#FF5E9C21$ 10q�6@   ._�5#     �� .+�5$     �� -   5        $ ToggleSection5Button��5$  %   $3��-Quản lý CSDL các cơ sở chăn nuôi ▼��5%  )   $��16(�5&  )   $
��Bold"�5'  )   
������ $��0q�5)  )   5*  )   �� 5+     -   5        $ Section5Details��5+  )   $y�	Collapsed=�6B   $��10,5,0,0q�6Y   .+�5,  "   �� $M��GQuản lý danh mục tổ chức, cá nhân trong cơ sở chăn nuôi��6,   $
��Wrap=�6k   $��0,5,0,0q�6   �� 5-  "   $Q��KTra cứu thông tin về tổ chức, cá nhân trong cơ sở chăn nuôi��6,   $
��Wrap=�6o   $��0,5,0,0q�6�   �� 5.  "   $;��5Quản lý thông tin về điều kiện chăn nuôi��6,   $
��Wrap=�6\   $��0,5,0,0q�6p   �� 5/  "   $L��FQuản lý thông tin giấy chứng nhận của cơ sở chăn nuôi��6,   $
��Wrap=�6i   $��0,5,0,0q�6}   �� 50  "   $I��CQuản lý kết quả thống kê các hộ chăn nuôi nhỏ lẻ��6,   $
��Wrap=�6d   $��0,5,0,0q�6x   �� 51  "   $H��BTra cứu kết quả thống kê các hộ chăn nuôi nhỏ lẻ��6,   $
��Wrap=�6d   $��0,5,0,0q�6x   �� 52  "   $]��WQuản lý thông tin tổ chức chứng nhận sự phù hợp được chỉ định��6,   $
��Wrap=�6q   $��0,5,0,0q�6�   �� 53  "   $\��VTra cứu thông tin tổ chức chứng nhận sự phù hợp được chỉ định��6,   $
��Wrap=�6q   $��0,5,0,0q�6�   �� 54  "   $J��DQuản lý danh mục cơ sở chế biến sản phẩm chăn nuôi��6,   $
��Wrap=�6f   $��0,5,0,0q�6z   55     56     57     5:     5;      � 5<     -   5          �Name$ 	MainFrame��5<     $��2��5=     $��1��6!   $��3��5>       � NavigationUIVisibility$ Hidden=�5?     $��Stretch=�5@     $��Stretch=�5A     5C     5E     5G     