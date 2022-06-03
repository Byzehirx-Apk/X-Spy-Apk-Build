.class final Landroidx/customview/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroidx/customview/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/customview/view/AbsSavedState;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    .line 92
    .local v3, "superState":Landroid/os/Parcelable;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 93
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "superState must be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_0
    sget-object v4, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    move-object v0, v4

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroidx/customview/view/AbsSavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/customview/view/AbsSavedState;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method

.method public newArray(I)[Landroidx/customview/view/AbsSavedState;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    new-array v2, v2, [Landroidx/customview/view/AbsSavedState;

    move-object v0, v2

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState$2;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/customview/view/AbsSavedState$2;->newArray(I)[Landroidx/customview/view/AbsSavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState$2;
    return-object v0
.end method
