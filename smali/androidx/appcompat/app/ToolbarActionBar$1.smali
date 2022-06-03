.class Landroidx/appcompat/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/ToolbarActionBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ToolbarActionBar$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    invoke-virtual {v1}, Landroidx/appcompat/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 57
    return-void
.end method
