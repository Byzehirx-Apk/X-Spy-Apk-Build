.class final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroidx/fragment/app/BackStackState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/BackStackState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 85
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/fragment/app/BackStackRecord;)V
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackState;
    move-object v1, p1

    .local v1, "bse":Landroidx/fragment/app/BackStackRecord;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 50
    .local v2, "numOps":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x6

    mul-int/lit8 v7, v7, 0x6

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    .line 52
    move-object v6, v1

    iget-boolean v6, v6, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_0

    .line 53
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Not on back stack"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 57
    .local v3, "pos":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "opNum":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 58
    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v5, v6

    .line 59
    .local v5, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    aput v8, v6, v7

    .line 60
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->mIndex:I

    :goto_1
    aput v8, v6, v7

    .line 61
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    aput v8, v6, v7

    .line 62
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    aput v8, v6, v7

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    aput v8, v6, v7

    .line 64
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    iget v8, v8, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    aput v8, v6, v7

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v8, -0x1

    goto :goto_1

    .line 66
    .end local v5    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    :cond_2
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mTransition:I

    .line 67
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    .line 68
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    .line 69
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mIndex:I

    .line 70
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 71
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 72
    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 73
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 74
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 75
    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v7, v6, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 76
    move-object v6, v0

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v7, v6, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/BackStackState;
    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;
    .locals 13

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackState;
    move-object v1, p1

    .local v1, "fm":Landroidx/fragment/app/FragmentManagerImpl;
    new-instance v8, Landroidx/fragment/app/BackStackRecord;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    move-object v2, v8

    .line 96
    .local v2, "bse":Landroidx/fragment/app/BackStackRecord;
    const/4 v8, 0x0

    move v3, v8

    .line 97
    .local v3, "pos":I
    const/4 v8, 0x0

    move v4, v8

    .line 98
    .local v4, "num":I
    :goto_0
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 99
    new-instance v8, Landroidx/fragment/app/BackStackRecord$Op;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroidx/fragment/app/BackStackRecord$Op;-><init>()V

    move-object v5, v8

    .line 100
    .local v5, "op":Landroidx/fragment/app/BackStackRecord$Op;
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->cmd:I

    .line 101
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Instantiate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " op #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " base fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v11, v3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 103
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 104
    .local v6, "findex":I
    move v8, v6

    if-ltz v8, :cond_1

    .line 105
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v7, v8

    .line 106
    .local v7, "f":Landroidx/fragment/app/Fragment;
    move-object v8, v5

    move-object v9, v7

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    .line 107
    .line 110
    .end local v7    # "f":Landroidx/fragment/app/Fragment;
    :goto_1
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    .line 111
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    .line 112
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    .line 113
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mOps:[I

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    aget v9, v9, v10

    iput v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    .line 114
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->enterAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 115
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->exitAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 116
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->popEnterAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 117
    move-object v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/BackStackRecord$Op;->popExitAnim:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 118
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->addOp(Landroidx/fragment/app/BackStackRecord$Op;)V

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto/16 :goto_0

    .line 108
    :cond_1
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord$Op;->fragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 121
    .end local v5    # "op":Landroidx/fragment/app/BackStackRecord$Op;
    .end local v6    # "findex":I
    :cond_2
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mTransition:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 122
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mTransitionStyle:I

    .line 123
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 124
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mIndex:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 125
    move-object v8, v2

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 126
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 127
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 128
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 129
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 130
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 131
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v9, v8, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 132
    move-object v8, v2

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    iput-boolean v9, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 133
    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 134
    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Landroidx/fragment/app/BackStackState;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/BackStackState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mOps:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mTransition:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/BackStackState;->mReorderingAllowed:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
