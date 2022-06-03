.class public abstract Landroidx/customview/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/customview/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Landroidx/customview/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroidx/customview/view/AbsSavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/customview/view/AbsSavedState$1;-><init>()V

    sput-object v0, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    .line 88
    new-instance v0, Landroidx/customview/view/AbsSavedState$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/customview/view/AbsSavedState$2;-><init>()V

    sput-object v0, Landroidx/customview/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    .line 70
    .local v3, "superState":Landroid/os/Parcelable;
    move-object v4, v0

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    :goto_0
    iput-object v5, v4, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 71
    return-void

    .line 70
    :cond_0
    sget-object v5, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 6
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v1

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "superState must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    :goto_0
    iput-object v3, v2, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 51
    return-void

    .line 50
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroidx/customview/view/AbsSavedState$1;)V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, p1

    .local v1, "x0":Landroidx/customview/view/AbsSavedState$1;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/customview/view/AbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState;
    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/customview/view/AbsSavedState;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/customview/view/AbsSavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
