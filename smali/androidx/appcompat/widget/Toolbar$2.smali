.class Landroidx/appcompat/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/Toolbar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/Toolbar$2;->this$0:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/Toolbar$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$2;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v1

    .line 221
    return-void
.end method
