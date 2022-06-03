.class final Landroidx/fragment/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/fragment/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroidx/fragment/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroidx/fragment/app/BackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 646
    new-instance v0, Landroidx/fragment/app/FragmentManagerState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 618
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 618
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 625
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroidx/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/fragment/app/FragmentState;

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    .line 626
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    .line 627
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/fragment/app/BackStackState;

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 628
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 629
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 630
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerState;
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 640
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 641
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 642
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    return-void
.end method
