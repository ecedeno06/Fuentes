USE [SIB]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'

GO

EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'

GO

EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'

GO

/****** Object:  View [dbo].[vAseguradoPolizas]    Script Date: 2/6/2018 8:10:24 PM ******/
DROP VIEW [dbo].[vAseguradoPolizas]
GO

/****** Object:  View [dbo].[vAseguradoPolizas]    Script Date: 2/6/2018 8:10:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAseguradoPolizas]
AS
SELECT        r.ramo_subramo, r.descripcion, p.poliza, a.nombre, a.apellido, p.promotor, ISNULL(v.nombre, '') + '  ' + ISNULL(v.apellido, '') AS PromotorNombre, c.aseguradora, CAST(p.fin AS varchar(10)) AS Hasta, p.activa, p.guid, p.vigencia, 
                         p.renueva, p.tipopro, r.siglas, p.fin, r.impuesto
FROM            dbo.poliza AS p INNER JOIN
                         dbo.asegurado AS a ON p.asegurado = a.asegurado INNER JOIN
                         dbo.ramos AS r ON p.ramo_subramo = r.ramo_subramo INNER JOIN
                         dbo.users AS v ON v.xuser = p.promotor INNER JOIN
                         dbo.aseguradora AS c ON p.aseguradora = c.id_aseg

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[20] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 135
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 6
               Left = 491
               Bottom = 135
               Right = 677
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "v"
            Begin Extent = 
               Top = 6
               Left = 715
               Bottom = 135
               Right = 887
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1935
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   B' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'egin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAseguradoPolizas'
GO

