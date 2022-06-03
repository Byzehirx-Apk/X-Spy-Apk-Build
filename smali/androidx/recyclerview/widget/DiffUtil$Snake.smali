.class Landroidx/recyclerview/widget/DiffUtil$Snake;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Snake"
.end annotation


# instance fields
.field removal:Z

.field reverse:Z

.field size:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
