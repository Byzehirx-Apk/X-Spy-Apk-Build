.class final Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field final mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field final mRecursive:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 5

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move-object v1, p1

    .local v1, "callback":Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    move v2, p2

    .local v2, "recursive":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 677
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 678
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    .line 679
    return-void
.end method
