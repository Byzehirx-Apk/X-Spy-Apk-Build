.class Landroidx/appcompat/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ToolbarActionBar$2;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$2;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar$2;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/ToolbarActionBar$2;
    return v0
.end method
