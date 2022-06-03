.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final paddingBottom:I

.field private final paddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    move v1, p1

    .local v1, "paddingTop":I
    move v2, p2

    .local v2, "paddingBottom":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 670
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 671
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 672
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 2

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
    return v0
.end method
