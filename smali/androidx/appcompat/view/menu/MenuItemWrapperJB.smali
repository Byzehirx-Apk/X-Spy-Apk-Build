.class Landroidx/appcompat/view/menu/MenuItemWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "object":Landroidx/core/internal/view/SupportMenuItem;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    .line 40
    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB;
    move-object v1, p1

    .local v1, "provider":Landroid/view/ActionProvider;
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemWrapperJB;->mContext:Landroid/content/Context;

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Landroidx/appcompat/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/MenuItemWrapperJB;
    return-object v0
.end method
