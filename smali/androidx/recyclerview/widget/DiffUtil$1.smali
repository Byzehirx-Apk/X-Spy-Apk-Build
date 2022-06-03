.class final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/recyclerview/widget/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$1;
    move-object v1, p1

    .local v1, "o1":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v2, p2

    .local v2, "o2":Landroidx/recyclerview/widget/DiffUtil$Snake;
    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 88
    .local v3, "cmpX":I
    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    sub-int/2addr v4, v5

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$1;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$1;
    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$1;->compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$1;
    return v0
.end method
