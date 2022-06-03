.class public Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# instance fields
.field public orientation:I

.field public reverseLayout:Z

.field public spanCount:I

.field public stackFromEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10422
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
