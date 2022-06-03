.class public Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeEffectFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory$EdgeDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5337
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5339
    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5368
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    move-object v1, p1

    .local v1, "view":Landroidx/recyclerview/widget/RecyclerView;
    move v2, p2

    .local v2, "direction":I
    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    return-object v0
.end method
