.class final Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
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
        "Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 4

    .prologue
    .line 2478
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 5

    .prologue
    .line 2473
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method

.method public newArray(I)[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .locals 3

    .prologue
    .line 2483
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    new-array v2, v2, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->newArray(I)[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
    return-object v0
.end method
