.class Landroidx/fragment/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 734
    return-void
.end method
