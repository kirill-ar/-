   M S B A M L   `   `   `  ����F  BAutoService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AutoServiceAutoService  5   	       AutoService.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AutoService     5   	   -   5          �Name$
  Root��5
   	   $��Arial Black)�5   	    � Title$* $Услуги авто сервиса��5	   
   $	��300��5   	   $	��800��6   $	��450��5   	   $	��800��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6    .+�5   
   ��  �� Orientation$ Vertical=�5      $��Bottom=�5      .+�5      �� -   5        $#��Добавить услугу��5         BrownButtonStyle#��[  5      y�5      �� *AdminVisibility+5      �� 5       -   5        $��AdminButton��5#      $��20��5!      #��[  5%      ��5"      �� *AdminModeCaption+5%      �� 5'      -   5         ��Name$ 
ExitButton��5(      $��
Выход��5)      #��[  5+      5,      �� 5/   
   $��5q�50      $%��./service_logo/service_logo.png��51      $	��Top=�52      � 55   
   $��1��6    � RowDefinitions 56      �� 57      $��30 �6    �� 58      $��1* �6    �� 59      $��30 �6    .+�5<      &   System.Windows.Controls.DataGrid  -   5          Name$ MainDataGrid��5=      $��1��5>         CanUserAddRows .     AutoGenerateColumns .  ��5?      �� *ServiceList+	   RowStyle	 5B      �� 5C      
 �� 
TargetType)  #System.Windows.Controls.DataGridRow"
  6    �� Triggers 5D      �� 5E       �� Binding 5F   !   �� *HasDiscount+ �� Value True5G   !   .a�5H   "   ��  �� Property � �� �� Value
 ����5J   %   5K      5M         Columns 5P      0  *System.Windows.Controls.DataGridTextColumn  5R      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 5S         Header$+ %Наименование услуги��5T      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5U      �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5V      $	 100 5W      $ Стоимость��5X         CellTemplate 5Z      �� 5[      .R�5]   "   �� ��5^   %   �� *CostTextDecoration+��5_   %   �� *
CostString+5`      5b        5d      $	 150 5e      $+ %Стоимость cо скидкой��5f       5g      �� *CostWithDiscount+  5i      $	 150 5j      $( "Продолжительность��5k       5l      �� *DurationInSeconds+  5n      $ 64 5o      $  ��5p       5q      �� 5r      .R�5t   "   �� $��64��5u      $��64��5v      ��5w      �� *
ImageUri+5x      5z        5}      $ 60 5~      $ Скидка��5       5�      �� *
Discount+  5�      $ Действия��5�       5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�5�   %   y�5�   %   �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5�   &   �� $��
EditButton��5�   )   -   5        $ ��Редактировать��5�   )   #��[  5�   )   5�   )   �� 5�   &   $��	ZapButton��5�   )   -   5        $$��Запись на услугу��5�   )   #��[  5�   )   5�   )   �� 5�   &   $��DeleteButton��5�   )   -   5        $��Удалить��5�   )   #��[  5�   )   5�   )   5�   #   5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��Center=�5�      .+�5�      �� $��
Цена: ��6   	� 5�      -	   5         	� 	GroupName$ Price��5�      
 � Tag$ 1��5�      $!��по возрастанию��5�       d� 	IsChecked$
 TrueY�5�      $��Center=�5�      	� 5�      -
   5        $ Price��5�      $ 2��5�      $��по убыванию��5�      $��Center=�5�      �� 5�      $&�� Фильтр по скидке: ��6   $��10,0,0,0q�5�      $��Center=�5�      �� 5�      -   5         ��Name$ DiscountFilterComboBox��5�       �� SelectedIndex$ 0��5�      ��5�      �� *FilterByDiscountNamesList+�� 5�      $��
Поиск��6   �� 5�      -   5         ��Name$ SearchFilterTextBox��5�      $	��250��5�      $��Center=�5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��2��5�      .+�5�      �� ��6   �� *FilteredServicesCount+�� 5�      $��/��6   �� 5�      ��6   �� *ServicesCount+5�      5�      5�      5�      