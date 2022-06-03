.class Lcom/google/android/material/textfield/TextInputLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/textfield/TextInputLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field error:Ljava/lang/CharSequence;

.field isPasswordToggledVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1475
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/android/material/textfield/TextInputLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    .line 1454
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    move-object v1, p1

    .local v1, "source":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/ClassLoader;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1455
    move-object v3, v0

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1456
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1457
    return-void

    .line 1456
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1451
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1468
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TextInputLayout.SavedState{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 1469
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1468
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 1461
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1462
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1463
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    return-void

    .line 1463
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
