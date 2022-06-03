.class final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
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
        "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$1;
    move-object v1, p1

    .local v1, "lhs":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v2, p2

    .local v2, "rhs":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    move-object v3, v1

    iget v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    move-object v4, v2

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$1;
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/ViewPager$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-object v5, v2

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {v3, v4, v5}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/ViewPager$1;
    return v0
.end method
