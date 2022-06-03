.class public abstract Landroidx/recyclerview/widget/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/DiffUtil$Callback;
    move v1, p1

    .local v1, "oldItemPosition":I
    move v2, p2

    .local v2, "newItemPosition":I
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/DiffUtil$Callback;
    return-object v0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method
