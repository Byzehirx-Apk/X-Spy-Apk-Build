.class Landroidx/appcompat/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$1;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .line 206
    .end local v0    # "this":Landroidx/appcompat/widget/Toolbar$1;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/Toolbar$1;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
