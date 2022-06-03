.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
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
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3277
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 12

    .prologue
    .line 3239
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3241
    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v3, v7

    .line 3243
    .local v3, "size":I
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 3244
    .local v4, "ids":[I
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3246
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v7

    move-object v5, v7

    .line 3248
    .local v5, "states":[Landroid/os/Parcelable;
    move-object v7, v0

    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3249
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 3250
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3249
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3252
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 3255
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3256
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11

    .prologue
    .line 3260
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3262
    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_0
    move v3, v7

    .line 3263
    .local v3, "size":I
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 3266
    .local v4, "ids":[I
    move v7, v3

    new-array v7, v7, [Landroid/os/Parcelable;

    move-object v5, v7

    .line 3268
    .local v5, "states":[Landroid/os/Parcelable;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 3269
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 3270
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    aput-object v9, v7, v8

    .line 3268
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3262
    .end local v3    # "size":I
    .end local v4    # "ids":[I
    .end local v5    # "states":[Landroid/os/Parcelable;
    .end local v6    # "i":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 3272
    .restart local v3    # "size":I
    .restart local v4    # "ids":[I
    .restart local v5    # "states":[Landroid/os/Parcelable;
    .restart local v6    # "i":I
    :cond_1
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3273
    move-object v7, v1

    move-object v8, v5

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 3275
    return-void
.end method
