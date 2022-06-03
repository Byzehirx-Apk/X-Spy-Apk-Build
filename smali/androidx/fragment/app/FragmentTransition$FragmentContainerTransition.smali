.class Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroidx/fragment/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

.field public lastIn:Landroidx/fragment/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
