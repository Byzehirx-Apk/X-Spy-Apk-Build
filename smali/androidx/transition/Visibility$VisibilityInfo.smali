.class Landroidx/transition/Visibility$VisibilityInfo;
.super Ljava/lang/Object;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityInfo"
.end annotation


# instance fields
.field mEndParent:Landroid/view/ViewGroup;

.field mEndVisibility:I

.field mFadeIn:Z

.field mStartParent:Landroid/view/ViewGroup;

.field mStartVisibility:I

.field mVisibilityChange:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Visibility$VisibilityInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method
