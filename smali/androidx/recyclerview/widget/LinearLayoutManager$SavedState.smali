.class public Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2355
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2321
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2324
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2325
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2326
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2327
    return-void

    .line 2326
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V
    .locals 4

    .prologue
    .line 2329
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, p1

    .local v1, "other":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2330
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2331
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2332
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2333
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 2345
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    return v0
.end method

.method hasValidAnchor()Z
    .locals 2

    .prologue
    .line 2336
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method invalidateAnchor()V
    .locals 3

    .prologue
    .line 2340
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2341
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 2350
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;
    move-object v1, p1

    .local v1, "dest":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    return-void

    .line 2352
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
