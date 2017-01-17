USE [aspnet-SIS-20161025115810]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'de033c5e-5ac7-4516-a535-dce8a6a07de0', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'358dc848-0dc5-4790-bc5c-9f76458a22f4', N'Sub Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f19825f8-4c6f-43a1-8012-5dc6b2e3d3d3', N'Trainer')
INSERT [dbo].[AspNetUsers] ([Id], [NameIdentifier], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'09aeb310-3108-4c4c-a4a0-853acbd0704c', NULL, N'limjianyang30@gmail.com', 0, N'AH5MpgoUMg5xVAdfyHfOK54L6bMAw8ZnI9hlk5TdTh2sy37g8D9Qettig8yFVjBiXw==', N'e422a5b7-b306-4581-b9f3-e6773ea3031d', NULL, 0, 0, NULL, 1, 0, N'limjianyang30@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [NameIdentifier], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0c708133-e99c-43fc-a12f-7d093a8298ee', NULL, N'eddie711@hotmail.co.uk', 0, N'AC1LTFXP1j3yzdqCg1lNGfCJO07GTqhbHxkJQLmPbE1brcZmEY/tXxFtYhCVB90bsw==', N'ee5448d9-b467-49e2-b74c-6a3e1e9cc8b2', NULL, 0, 0, NULL, 1, 0, N'eddie711@hotmail.co.uk')
INSERT [dbo].[AspNetUsers] ([Id], [NameIdentifier], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'74723c74-c5f0-4c3a-995f-1f487485b43e', N'Admins', N'admin@test.com', 0, N'AAHWn+zual1I0O0RK7hpPQNOGfXF7k1MVqU2emeAFQAtJyakz+CoqtCxHMvvJej7HQ==', N'38dae8d4-e207-49ed-a587-66036870afbb', NULL, 0, 0, NULL, 1, 0, N'admin@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [NameIdentifier], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a813ae63-b618-4202-9045-7ef575aca9ce', N'subadmin', N'subadmin1@test.com', 0, N'AMYKicwbYiToDK8qw2FEY+q51NLTdGLHUod6rqwl3HHt8TRWClg1P/Ck/M1IWjE05g==', N'784f957d-6374-4b39-aa76-642eb0a3ce90', NULL, 0, 0, NULL, 1, 0, N'subadmin1@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [NameIdentifier], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'adc6166d-ca5b-4a7f-82c5-41e9c3336a64', N'aaaaaa', N'aaaaaa@test.com', 0, N'AIKeCRlufQtFbhdqE5mbvmSEw3+XstcDIUErD8zdUzRS8YMFX4CxYyrvlI1idL/Tpg==', N'5140302d-d598-4ff1-8c07-9ae33cf216e6', NULL, 0, 0, NULL, 1, 0, N'aaaaaa@test.com')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'09aeb310-3108-4c4c-a4a0-853acbd0704c', N'358dc848-0dc5-4790-bc5c-9f76458a22f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a813ae63-b618-4202-9045-7ef575aca9ce', N'358dc848-0dc5-4790-bc5c-9f76458a22f4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'74723c74-c5f0-4c3a-995f-1f487485b43e', N'de033c5e-5ac7-4516-a535-dce8a6a07de0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'09aeb310-3108-4c4c-a4a0-853acbd0704c', N'f19825f8-4c6f-43a1-8012-5dc6b2e3d3d3')


-- username: admin@test.com
-- password: P@ssw0rd
