.class final Lcom/google/android/material/stateful/ExtendableSavedState$1;
.super Ljava/lang/Object;
.source "ExtendableSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/stateful/ExtendableSavedState;
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
        "Lcom/google/android/material/stateful/ExtendableSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/stateful/ExtendableSavedState;
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    new-instance v2, Lcom/google/android/material/stateful/ExtendableSavedState;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/google/android/material/stateful/ExtendableSavedState$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/stateful/ExtendableSavedState;
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    new-instance v3, Lcom/google/android/material/stateful/ExtendableSavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/google/android/material/stateful/ExtendableSavedState$1;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/stateful/ExtendableSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/stateful/ExtendableSavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/stateful/ExtendableSavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/stateful/ExtendableSavedState;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/material/stateful/ExtendableSavedState;
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move v1, p1

    .local v1, "size":I
    move v2, v1

    new-array v2, v2, [Lcom/google/android/material/stateful/ExtendableSavedState;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/stateful/ExtendableSavedState$1;->newArray(I)[Lcom/google/android/material/stateful/ExtendableSavedState;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    return-object v0
.end method
