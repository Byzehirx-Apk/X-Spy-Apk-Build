.class public Landroidx/fragment/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/Fragment$SavedState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$SavedState;
    move-object v1, p1

    .local v1, "state":Landroid/os/Bundle;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 345
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 346
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$SavedState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 349
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 350
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 351
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$SavedState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/Fragment$SavedState;
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$SavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method
