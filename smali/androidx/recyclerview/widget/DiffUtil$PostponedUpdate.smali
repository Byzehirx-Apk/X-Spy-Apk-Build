.class Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 6

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    move v1, p1

    .local v1, "posInOwnerList":I
    move v2, p2

    .local v2, "currentPos":I
    move v3, p3

    .local v3, "removal":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 974
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 975
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 976
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 977
    return-void
.end method
