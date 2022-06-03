.class final Landroidx/fragment/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Landroidx/fragment/app/Fragment;

.field popEnterAnim:I

.field popExitAnim:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackRecord$Op;
    move v1, p1

    .local v1, "cmd":I
    move-object v2, p2

    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 204
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    .line 205
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    .line 206
    return-void
.end method
