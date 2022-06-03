.class public abstract Landroidx/recyclerview/widget/SortedList$Callback;
.super Ljava/lang/Object;
.source "SortedList.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT2;>;",
        "Landroidx/recyclerview/widget/ListUpdateCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT2;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT2;>;"
    move-object v1, p1

    .local v1, "item1":Ljava/lang/Object;, "TT2;"
    move-object v2, p2

    .local v2, "item2":Ljava/lang/Object;, "TT2;"
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT2;>;"
    return-object v0
.end method

.method public abstract onChanged(II)V
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT2;>;"
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(II)V

    .line 867
    return-void
.end method
