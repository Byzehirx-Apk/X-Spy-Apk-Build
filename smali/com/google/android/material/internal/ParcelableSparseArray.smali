.class public Lcom/google/android/material/internal/ParcelableSparseArray;
.super Landroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/internal/ParcelableSparseArray$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ParcelableSparseArray;
    move-object v1, v0

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 11

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ParcelableSparseArray;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v7, v0

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 36
    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v3, v7

    .line 37
    .local v3, "size":I
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 38
    .local v4, "keys":[I
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readIntArray([I)V

    .line 39
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v7

    move-object v5, v7

    .line 40
    .local v5, "values":[Landroid/os/Parcelable;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 41
    move-object v7, v0

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ParcelableSparseArray;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/internal/ParcelableSparseArray;
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ParcelableSparseArray;
    move-object v1, p1

    .local v1, "parcel":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v7

    move v3, v7

    .line 53
    .local v3, "size":I
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 54
    .local v4, "keys":[I
    move v7, v3

    new-array v7, v7, [Landroid/os/Parcelable;

    move-object v5, v7

    .line 55
    .local v5, "values":[Landroid/os/Parcelable;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 56
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 57
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    aput-object v9, v7, v8

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    :cond_0
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 61
    move-object v7, v1

    move-object v8, v5

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
