   M S B A M L   `   `   `  ���� G  CDataBaseTree, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DataBaseTree.ViewDataBaseTree.View  ?$clr-namespace:DataBaseTree.ViewModelDataBaseTree.ViewModel  A%clr-namespace:DataBaseTree.Model.TreeDataBaseTree.Model.Tree  [2clr-namespace:DataBaseTree.ViewModel.TreeViewModel$DataBaseTree.ViewModel.TreeViewModel  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity "    DataBaseTree.View.TreeWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:DataBaseTree.View     3vm$clr-namespace:DataBaseTree.ViewModel     6tree%clr-namespace:DataBaseTree.Model.Tree     Etreevm2clr-namespace:DataBaseTree.ViewModel.TreeViewModel     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity       � Title$  
TreeWindow��$	��550��$	��750�� � DataContext 0   *DataBaseTree.ViewModel.TreeWindowViewModel  .���  � ColumnDefinitions �� $��* �$	��230���� $
��Auto ��� $
��1.2* ��� $
��Auto ��� $��* �.+��� $��1��$��3��$��Center=�$��Stretch=�]� $��0��.+�o� $	��Top=�$��25��.@�m�    TreeItemStyle#��[   � ToolTip$ Connect�� m� Icon$" /Resources/Icons/Connect.png�� m� Command �� *ConnectCommand+m� #��[  $ 
Disconnect��$% /Resources/Icons/Disconnect.png�� m� CommandParameter ��  �� ElementName$ DatabaseTree�� �� Path$ SelectedItem� �� $ RemoveConnectionCommand�m� #��[  $ Restore connection��$" /Resources/Icons/Restore.png�� �� $ RestoreCommand��� #��["�m� #��[  $ Refresh selected node��$" /Resources/Icons/Refresh.png�� �� *RefreshCommand+ �� $ DatabaseTree��$ SelectedItem�m� #��[  $ Load Properties��$% /Resources/Icons/Properties.png�� �� *LoadPropertiesCommand+ �� $ DatabaseTree��$ SelectedItem�m� #��[  $ Show definition��$% /Resources/Icons/Definition.png�� �� *ShowDefinitionCommand+ �� $ DatabaseTree��$ SelectedItem��� #��["�m� #��[  $ 	Save tree��$ /Resources/Icons/Save.png�� �� *SaveCommand+m� #��[  $ Load tree from file��$# /Resources/Icons/LoadFile.png�� �� *OpenCommand+� $��Bottom=�	 � RowDefinitions	 �� $
��Auto ��� $��25 �.+��� $��1q�
����  �$��90��y��� $ IsFilterEnabled�   BooleanToVisibilityConverter
 �� 	Converter#
 [ ._��  � Orientation$ Vertical=�$��5q�.+��� $��Server�� d� 	IsChecked �� $ 
SearchMask� �� Mode$ TwoWay=�  DbEntityEnumConverter#
 [ *   $DataBaseTree.Model.Tree.DbEntityEnum   Server �� ConverterParameter# Z �� $��Database�� �� $ 
SearchMask�$ TwoWay=�#
 [    Database# Z �� $��Schema�� �� $ 
SearchMask�$ TwoWay=�#
 [    Schema# Z �� $��Table�� �� $ 
SearchMask�$ TwoWay=�#
 [    Table# Z �� $
��View�� �� $ 
SearchMask�$ TwoWay=�#
 [    View# Z �� $��Function�� �� $ 
SearchMask�$ TwoWay=�#
 [    Function# Z �� $��Pocedure�� �� $ 
SearchMask�$ TwoWay=�#
 [    	Procedure# Z �� $��
Constraint�� �� $ 
SearchMask�$ TwoWay=�#
 [    
Constraint# Z �� $��Column�� �� $ 
SearchMask�$ TwoWay=�#
 [    Column# Z �� $��Trigger�� �� $ 
SearchMask�$ TwoWay=�#
 [    Trigger# Z �� $��	Parameter�� �� $ 
SearchMask�$ TwoWay=�#
 [    	Parameter# Z �� $	��Key�� �� $ 
SearchMask�$ TwoWay=�#
 [ 
   Key# Z �� $��Index�� �� $ 
SearchMask�$ TwoWay=�#
 [    Index# Z � $��1�� �� $��3* ��� �� $
��1.2* �.+��� -    ��Name$ SearchTextBox��$��0��
 � Tag$ Find node here������ *
SearchText+ �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$
��Find��$��3q����� *SearchCommand+�� $��2��$��Center=�$��Filter�� �� $ IsFilterEnabled�R� -    R�Name$ DatabaseTree��$��0q�$��Stretch=�$��Stretch=����� *Root+$ PropertyChanged=�����   �� 
TargetType"  Q�.��� ! �� Property! �@Q�
IsExpanded" �� Value" �� *
IsExpanded+$ TwoWay=��� ! �@Q�
IsSelected" �� *
IsSelected+$ TwoWay=��� ! � ��$" Normal"�# �� Triggers# P� $ P� Property$ �@Q�
IsSelected% P� Value% . . ��� ! � ��$
" Bold"�& � 	Resources& ' �� DataType@   :DataBaseTree.ViewModel.TreeViewModel.MetadataViewModelBase( �� ItemsSource) ��Name* �� Orientation+ ��Name, �� Triggers- �� Value. �� Binding/ �� 
TargetName��%@  (��       *, +)�� "'  ( �� *
Children+.R��� $) 	Container��$* 
Horizontal=�.+��� $��13��$��13������ *Icon+�� $+ 	NameBlock��$��3,0,0,0q����� $
 Name��� $+ BusyLoaderIndicator��, �� $
- true��. �� *IsBusy+.a��� $/ BusyLoaderIndicator��! � ��$" (loading...)��.  (System.Windows.Interactivity.Interaction0   Triggers0 /  )System.Windows.Interactivity.EventTrigger  1   	EventName$1 SelectedItemChanged��.  (System.Windows.Interactivity.TriggerBase2   Actions.2 6  0System.Windows.Interactivity.InvokeCommandAction  3   Command3 �� $ ShowPropertiesCommand�4   CommandParameter4 �� $ DatabaseTree��$ SelectedItem�&   System.Windows.Controls.DataGrid  $��2��5   AutoGenerateColumns5 .  6   GridLinesVisibility$6 
Horizontal=�
������ 7   RowBackground
7 ���� 8   AlternatingRowBackground
8 �����9   CanUserResizeRows9 .  $��0q����� *ItemProperties+$ OneWay=�:   Columns: 0	  *System.Windows.Controls.DataGridTextColumn	  ,
  &System.Windows.Controls.DataGridColumn; 
  Header$; Property name��< 
  
IsReadOnly< . = 
  Width5  /System.Windows.Controls.DataGridLengthConverter$= * 1  +System.Windows.Controls.DataGridBoundColumn>   Binding> �� $	 Key�$ OneWay=�	  $; Value��< . $
= 1.3* > �� $ Value�$ OneTime=��� $��3��$��3��$��Center=�$��Stretch=�� $��4��	 �� $��25 ��� .+��� $��0��$��Object definition��$��Stretch=�? �� TextAlignment$? Center=�$��18(��� $��1��$��Stretch=�@ �� 
IsReadOnly@ . $A �� HorizontalScrollBarVisibility$
A Auto=�"B �� VerticalScrollBarVisibility$
B Auto=����� *DefinitionText+