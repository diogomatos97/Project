   M S B A M L   `   `   `  ����E  AUpCloudGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:UpCloudGui
UpCloudGui  5          UpCloudGui.LoginIn   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:UpCloudGui     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6.     N� Title$  Login��5	      .��5      � $��10,0,0,0q�6    � RowDefinitions 5   
   �� 5      6   �� 5      $��2* �6   6*   ��5   
   �� 5      .��5      �  � Color$ 	#FF224CA4��6    � Offset$ 1Q�61   � 5      $ 	#FF00CD79��6   $ 0Q�61   5      .+�5   
   #  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth5=�6   $��2��6O   $��152,43,152,59q�6`    J� Opacity$	 0.2Q�6w   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � $ 	#FF224CA4��6#   $ 0Q�65   � 5      $ 	#FF00CD79��6#   $ 1Q�65   5      5      �� 5    
   $��1��6   .+�5!      ��  �� Orientation$ 
Horizontal=�6   .+�5#      �� -   5        	 ��Name$	 uName��5#      $	��109��6)   $
��Left=�65   $��Username��5$      
������ $��0q�6;   
�������$��20(�6b   $	 0.6Q�6p   
 �� TextAlignment$
 Center=�6~   $��	170,0,0,0q�6�   $��31��6�   '  !MaterialDesignThemes.Wpf.PackIcon  5%         Kind$ Account=�6*   
�������$��30��6L   $��24��6X   $��12,0,0,0q�6c   $	 0.6Q�6u   5&      �� 5)      
�������$	 0.6Q�6)   $��2��67   $	��138��6B   �� 5*      $ 
Horizontal=�6   $��0,20,0,0q�62   .+�5,      G� -   5         G�Name$
 pass��5,      $	��109��6,   $
��Left=�68    G� Password$ Password��5-      
������ $��0q�6?   
�������$��20(�6f   $	 0.6Q�6t   $��	170,0,0,0q�6�   $��31��6�     5.      $	 Key=�6*   
�������$��30��6H   $��24��6T   $��12,0,0,0q�6_   $	 0.6Q�6q   5/      �� 52      
�������$	 0.6Q�6)   $��2��67   $	��138��6B   55      �� 58   
   $ 
Horizontal=�6   $��63,65,78,38q�6.   $��1��6C   .+�59      �� -   5        
�������   MaterialDesignFlatButton#��[  5;      $	 0.8Q�5<      $��1q�6+   
������� � Cursor$
 Hand��6S   $��Register��6a   $��	100,0,0,0q�6t   �� 5=      -   5        
�������#��[  5?      $��
10,0,206,0q�5A      $��1��6   $	 0.8Q�6&   $��1q�65   
�������$
 Hand��6]   $��Login��6k   5B      �� 5C   
   $��196,37,196,0q�6   $��Uniform=�6&   $6��085b65f62-63ca-44d6-b8cd-4315d8805817_200x200.png��68   $	 0.6Q�6r   $	��Top=�6�   $	��101��6�   $��2��6�   ${�False��6�    J� RenderTransformOrigin$ 0.512,0.607&�6�   5D      5E      