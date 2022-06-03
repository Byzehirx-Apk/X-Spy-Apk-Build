.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
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
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 954
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 935
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 940
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 941
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 5

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move v2, p2

    .local v2, "state":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 945
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    .line 946
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    move-object v1, p1

    .local v1, "out":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 951
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    return-void
.end method
