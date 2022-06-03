.class public Lcom/google/android/material/stateful/ExtendableSavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "ExtendableSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/stateful/ExtendableSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extendableStates:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/material/stateful/ExtendableSavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/stateful/ExtendableSavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/stateful/ExtendableSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 12

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 46
    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v3, v7

    .line 48
    .local v3, "size":I
    move v7, v3

    new-array v7, v7, [Ljava/lang/String;

    move-object v4, v7

    .line 49
    .local v4, "keys":[Ljava/lang/String;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 51
    move v7, v3

    new-array v7, v7, [Landroid/os/Bundle;

    move-object v5, v7

    .line 52
    .local v5, "states":[Landroid/os/Bundle;
    move-object v7, v1

    move-object v8, v5

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 54
    move-object v7, v0

    new-instance v8, Landroidx/collection/SimpleArrayMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v8, v7, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    .line 55
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 56
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/google/android/material/stateful/ExtendableSavedState$1;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v1, p1

    .local v1, "x0":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/ClassLoader;
    move-object v3, p3

    .local v3, "x2":Lcom/google/android/material/stateful/ExtendableSavedState$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 40
    move-object v2, v0

    new-instance v3, Landroidx/collection/SimpleArrayMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExtendableSavedState{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 82
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " states="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/stateful/ExtendableSavedState;
    move-object v1, p1

    .local v1, "out":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v7

    move v3, v7

    .line 65
    .local v3, "size":I
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    move v7, v3

    new-array v7, v7, [Ljava/lang/String;

    move-object v4, v7

    .line 68
    .local v4, "keys":[Ljava/lang/String;
    move v7, v3

    new-array v7, v7, [Landroid/os/Bundle;

    move-object v5, v7

    .line 70
    .local v5, "states":[Landroid/os/Bundle;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 71
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 72
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    aput-object v9, v7, v8

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :cond_0
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 76
    move-object v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 77
    return-void
.end method
