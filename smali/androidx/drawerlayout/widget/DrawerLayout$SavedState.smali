.class public Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/drawerlayout/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2124
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
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
    .line 2102
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2095
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2103
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2104
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 2105
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 2106
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 2107
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 2108
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2111
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2095
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 2112
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 2116
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2117
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    return-void
.end method
