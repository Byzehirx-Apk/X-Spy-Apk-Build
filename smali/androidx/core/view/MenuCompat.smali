.class public final Landroidx/core/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/MenuCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGroupDividerEnabled(Landroid/view/Menu;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "menu":Landroid/view/Menu;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/internal/view/SupportMenu;

    if-eqz v2, :cond_1

    .line 49
    move-object v2, v0

    check-cast v2, Landroidx/core/internal/view/SupportMenu;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/internal/view/SupportMenu;->setGroupDividerEnabled(Z)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 51
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Menu;->setGroupDividerEnabled(Z)V

    goto :goto_0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move v1, p1

    .local v1, "actionEnum":I
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 38
    return-void
.end method
