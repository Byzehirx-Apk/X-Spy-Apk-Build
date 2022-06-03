.class public final Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 5

    .prologue
    .line 1132
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "spanCount":I
    move v3, v1

    move v4, v2

    rem-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
    return v0
.end method

.method public getSpanSize(I)I
    .locals 3

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
    move v1, p1

    .local v1, "position":I
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
    return v0
.end method
