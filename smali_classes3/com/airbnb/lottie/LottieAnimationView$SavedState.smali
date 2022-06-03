.class Lcom/airbnb/lottie/LottieAnimationView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/lottie/LottieAnimationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animationName:Ljava/lang/String;

.field animationResId:I

.field imageAssetsFolder:Ljava/lang/String;

.field isAnimating:Z

.field progress:F

.field repeatCount:I

.field repeatMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 914
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v1, p1

    .local v1, "in":Landroid/os/Parcel;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 895
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 896
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 897
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 898
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 899
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 900
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 901
    return-void

    .line 897
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/airbnb/lottie/LottieAnimationView$1;)V
    .locals 5

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v1, p1

    .local v1, "x0":Landroid/os/Parcel;
    move-object v2, p2

    .local v2, "x1":Lcom/airbnb/lottie/LottieAnimationView$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v1, p1

    .local v1, "superState":Landroid/os/Parcelable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 891
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    move-object v1, p1

    .local v1, "out":Landroid/os/Parcel;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 906
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 908
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    return-void

    .line 908
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
