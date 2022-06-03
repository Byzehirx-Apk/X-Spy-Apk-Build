.class final Landroidx/fragment/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Landroidx/fragment/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/FragmentState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 58
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mIndex:I

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 66
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 67
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 68
    return-void

    .line 59
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 64
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 66
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentState;
    move-object v1, p1

    .local v1, "frag":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 45
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mIndex:I

    .line 46
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    .line 47
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    .line 48
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput v3, v2, Landroidx/fragment/app/FragmentState;->mContainerId:I

    .line 49
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    .line 50
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    .line 51
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mDetached:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mDetached:Z

    .line 52
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 53
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentState;->mHidden:Z

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentState;
    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerNonConfig;Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/Fragment;
    .locals 13

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentState;
    move-object v1, p1

    .local v1, "host":Landroidx/fragment/app/FragmentHostCallback;
    move-object v2, p2

    .local v2, "container":Landroidx/fragment/app/FragmentContainer;
    move-object/from16 v3, p3

    .local v3, "parent":Landroidx/fragment/app/Fragment;
    move-object/from16 v4, p4

    .local v4, "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object/from16 v5, p5

    .local v5, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    if-nez v7, :cond_2

    .line 74
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v6, v7

    .line 75
    .local v6, "context":Landroid/content/Context;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 76
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    :cond_0
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 80
    move-object v7, v0

    move-object v8, v2

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10, v11}, Landroidx/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    iput-object v8, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 85
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 86
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 87
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 89
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentState;->mIndex:I

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/Fragment;->setIndex(ILandroidx/fragment/app/Fragment;)V

    .line 90
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 91
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 92
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    iput v8, v7, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 93
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentState;->mContainerId:I

    iput v8, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 94
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 95
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 96
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentState;->mDetached:Z

    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 97
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/fragment/app/FragmentState;->mHidden:Z

    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 98
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 100
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 101
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Instantiated fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 104
    .end local v6    # "context":Landroid/content/Context;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v4

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 105
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v8, v5

    iput-object v8, v7, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 106
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    move-object v0, v7

    .end local v0    # "this":Landroidx/fragment/app/FragmentState;
    return-object v0

    .line 82
    .restart local v0    # "this":Landroidx/fragment/app/FragmentState;
    .restart local v6    # "context":Landroid/content/Context;
    :cond_3
    move-object v7, v0

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v8, v9, v10}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    iput-object v8, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mFromLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mFragmentId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentState;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mRetainInstance:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mDetached:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentState;->mHidden:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void

    .line 118
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 122
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 123
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 125
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method
