.class public Landroidx/core/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/IconCompat$IconType;
    }
.end annotation


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final EXTRA_INT1:Ljava/lang/String; = "int1"

.field private static final EXTRA_INT2:Ljava/lang/String; = "int2"

.field private static final EXTRA_OBJ:Ljava/lang/String; = "obj"

.field private static final EXTRA_TINT_LIST:Ljava/lang/String; = "tint_list"

.field private static final EXTRA_TINT_MODE:Ljava/lang/String; = "tint_mode"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TAG:Ljava/lang/String; = "IconCompat"

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public mData:[B
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mInt1:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mInt2:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mObj1:Ljava/lang/Object;

.field public mParcelable:Landroid/os/Parcelable;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTintModeStr:Ljava/lang/String;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mType:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 172
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 177
    move-object v1, v0

    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 308
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move v1, p1

    .local v1, "mType":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 172
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 177
    move-object v2, v0

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 311
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 312
    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v3, v0

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 804
    .local v1, "type":I
    new-instance v3, Landroidx/core/graphics/drawable/IconCompat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v2, v3

    .line 805
    .local v2, "icon":Landroidx/core/graphics/drawable/IconCompat;
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "int1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 806
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "int2"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 807
    move-object v3, v0

    const-string/jumbo v4, "tint_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "tint_list"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 810
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "tint_mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "tint_mode"

    .line 812
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    invoke-static {v4}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 814
    :cond_1
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 828
    :pswitch_0
    const-string/jumbo v3, "IconCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 829
    const/4 v3, 0x0

    move-object v0, v3

    .line 831
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 818
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "obj"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 819
    .line 831
    :goto_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 822
    :pswitch_2
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "obj"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 823
    goto :goto_1

    .line 825
    :pswitch_3
    move-object v3, v2

    move-object v4, v0

    const-string/jumbo v5, "obj"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 826
    goto :goto_1

    .line 814
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Icon;
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 841
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->getType(Landroid/graphics/drawable/Icon;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 853
    :pswitch_0
    new-instance v4, Landroidx/core/graphics/drawable/IconCompat;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v2, v4

    .line 854
    .local v2, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 855
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return-object v0

    .line 843
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_1
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 845
    .local v2, "resPackage":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v2

    move-object v6, v1

    .line 846
    invoke-static {v6}, Landroidx/core/graphics/drawable/IconCompat;->getResId(Landroid/graphics/drawable/Icon;)I

    move-result v6

    .line 845
    invoke-static {v4, v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 847
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 848
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Icon resource cannot be found"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 851
    .end local v2    # "resPackage":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :pswitch_2
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 6
    .param p0    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 867
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->getType(Landroid/graphics/drawable/Icon;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 873
    :pswitch_0
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v1, v2

    .line 874
    .local v1, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 875
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :goto_0
    return-object v0

    .line 869
    .end local v1    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_1
    const/4 v2, 0x0

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->getResId(Landroid/graphics/drawable/Icon;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 871
    :pswitch_2
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 999
    move-object/from16 v0, p0

    .local v0, "adaptiveIconBitmap":Landroid/graphics/Bitmap;
    move/from16 v1, p1

    .local v1, "addShadow":Z
    const v10, 0x3f2aaaab

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object v12, v0

    .line 1000
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 999
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v2, v10

    .line 1002
    .local v2, "size":I
    move v10, v2

    move v11, v2

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v3, v10

    .line 1003
    .local v3, "icon":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v10

    .line 1004
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    move-object v5, v10

    .line 1006
    .local v5, "paint":Landroid/graphics/Paint;
    move v10, v2

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    move v6, v10

    .line 1007
    .local v6, "center":F
    move v10, v6

    const v11, 0x3f6aaaab

    mul-float/2addr v10, v11

    move v7, v10

    .line 1009
    .local v7, "radius":F
    move v10, v1

    if-eqz v10, :cond_0

    .line 1011
    const v10, 0x3c2aaaab

    move v11, v2

    int-to-float v11, v11

    mul-float/2addr v10, v11

    move v8, v10

    .line 1012
    .local v8, "blur":F
    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1013
    move-object v10, v5

    move v11, v8

    const/4 v12, 0x0

    const v13, 0x3caaaaab

    move v14, v2

    int-to-float v14, v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x3d000000    # 0.03125f

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1014
    move-object v10, v4

    move v11, v6

    move v12, v6

    move v13, v7

    move-object v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1017
    move-object v10, v5

    move v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x1e000000

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1018
    move-object v10, v4

    move v11, v6

    move v12, v6

    move v13, v7

    move-object v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1019
    move-object v10, v5

    invoke-virtual {v10}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 1023
    .end local v8    # "blur":F
    :cond_0
    move-object v10, v5

    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1024
    new-instance v10, Landroid/graphics/BitmapShader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v12, v13, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object v8, v10

    .line 1026
    .local v8, "shader":Landroid/graphics/BitmapShader;
    new-instance v10, Landroid/graphics/Matrix;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v10

    .line 1027
    .local v9, "shift":Landroid/graphics/Matrix;
    move-object v10, v9

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v12, v2

    sub-int/2addr v11, v12

    neg-int v11, v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    move-object v12, v0

    .line 1028
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move v13, v2

    sub-int/2addr v12, v13

    neg-int v12, v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    .line 1027
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1029
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1030
    move-object v10, v5

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v10

    .line 1031
    move-object v10, v4

    move v11, v6

    move v12, v6

    move v13, v7

    move-object v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1033
    move-object v10, v4

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1034
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "adaptiveIconBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 6

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "bits":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Bitmap must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v1, v2

    .line 250
    .local v1, "rep":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 251
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "bits":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "bits":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Bitmap must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_0
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v1, v2

    .line 235
    .local v1, "rep":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 236
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "bits":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "uri":Landroid/net/Uri;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Uri must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Landroid/net/Uri;
    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 282
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Uri must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v1, v2

    .line 285
    .local v1, "rep":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 286
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0
.end method

.method public static createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;
    .locals 8

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "data":[B
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "length":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 265
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Data must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_0
    new-instance v4, Landroidx/core/graphics/drawable/IconCompat;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v3, v4

    .line 268
    .local v3, "rep":Landroidx/core/graphics/drawable/IconCompat;
    move-object v4, v3

    move-object v5, v0

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 269
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 270
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 271
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "data":[B
    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Context must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "r":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "pkg":Ljava/lang/String;
    move v2, p2

    .local v2, "resId":I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Package must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_0
    move v5, v2

    if-nez v5, :cond_1

    .line 209
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Drawable resource ID must not be 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    :cond_1
    new-instance v5, Landroidx/core/graphics/drawable/IconCompat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    move-object v3, v5

    .line 212
    .local v3, "rep":Landroidx/core/graphics/drawable/IconCompat;
    move-object v5, v3

    move v6, v2

    iput v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 213
    move-object v5, v0

    if-eqz v5, :cond_2

    .line 215
    move-object v5, v3

    move-object v6, v0

    move v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 222
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "r":Landroid/content/res/Resources;
    return-object v0

    .line 216
    .restart local v0    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 217
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Icon resource cannot be found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    move-object v5, v3

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getResId(Landroid/graphics/drawable/Icon;)I
    .locals 5
    .param p0    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 946
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    move v0, v2

    .line 958
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v0

    .line 949
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getResId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    move v0, v2

    goto :goto_0

    .line 950
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 951
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon resource"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 952
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 953
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 954
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon resource"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 955
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 956
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 957
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon resource"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 958
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private static getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 917
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 929
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v0

    .line 920
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getResPackage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    goto :goto_0

    .line 921
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 922
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon package"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 923
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 924
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 925
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon package"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 926
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 927
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 928
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon package"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 929
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 11

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "resPackage":Ljava/lang/String;
    const-string/jumbo v4, "android"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    .line 577
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 565
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 567
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move-object v4, v2

    move-object v5, v1

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v3, v4

    .line 569
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 570
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 572
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 574
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 575
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "IconCompat"

    const-string/jumbo v5, "Unable to find pkg=%s for icon"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 577
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private static getType(Landroid/graphics/drawable/Icon;)I
    .locals 6
    .param p0    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 889
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    move v0, v2

    .line 901
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v0

    .line 892
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    move v0, v2

    goto :goto_0

    .line 893
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 894
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "IconCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get icon type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 895
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 896
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 897
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "IconCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get icon type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 898
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 899
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 900
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "IconCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get icon type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 901
    const/4 v2, -0x1

    move v0, v2

    goto/16 :goto_0
.end method

.method private static getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .locals 5
    .param p0    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 974
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v0, v2

    .line 986
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v0

    .line 977
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getUri"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    goto :goto_0

    .line 978
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 979
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon uri"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 980
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 981
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 982
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon uri"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 983
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 984
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 985
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "IconCompat"

    const-string/jumbo v3, "Unable to get icon uri"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 986
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 15

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v8, v0

    iget v8, v8, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    const/4 v8, 0x0

    move-object v0, v8

    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_1
    return-object v0

    .line 509
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :pswitch_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    goto :goto_1

    .line 511
    :pswitch_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    .line 512
    invoke-static {v11, v12}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    goto :goto_1

    .line 515
    :pswitch_2
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 516
    .local v2, "resPackage":Ljava/lang/String;
    move-object v8, v2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 518
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 520
    :cond_1
    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    move-object v3, v8

    .line 522
    .local v3, "res":Landroid/content/res/Resources;
    move-object v8, v3

    move-object v9, v0

    :try_start_0
    iget v9, v9, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 523
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 524
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "IconCompat"

    const-string/jumbo v9, "Unable to load resource 0x%08x from pkg=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget v13, v13, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 525
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    aput-object v13, v11, v12

    .line 524
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 529
    goto/16 :goto_0

    .line 531
    .end local v2    # "resPackage":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v11, [B

    check-cast v11, [B

    move-object v12, v0

    iget v12, v12, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move-object v13, v0

    iget v13, v13, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 532
    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    goto/16 :goto_1

    .line 535
    :pswitch_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v4, v8

    .line 536
    .local v4, "uri":Landroid/net/Uri;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 537
    .local v5, "scheme":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v6, v8

    .line 538
    .local v6, "is":Ljava/io/InputStream;
    const-string/jumbo v8, "content"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "file"

    move-object v9, v5

    .line 539
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 541
    :cond_2
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v6, v8

    .line 544
    .line 552
    :goto_2
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 553
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v11, v6

    .line 554
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v8

    goto/16 :goto_1

    .line 542
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 543
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "IconCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to load image from URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 544
    goto :goto_2

    .line 547
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v8

    .line 550
    goto :goto_2

    .line 548
    :catch_2
    move-exception v8

    move-object v7, v8

    .line 549
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "IconCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to load image from path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_2

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 789
    move v0, p0

    .local v0, "x":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 795
    const-string/jumbo v1, "UNKNOWN"

    move-object v0, v1

    .end local v0    # "x":I
    :goto_0
    return-object v0

    .line 790
    .restart local v0    # "x":I
    :pswitch_0
    const-string/jumbo v1, "BITMAP"

    move-object v0, v1

    goto :goto_0

    .line 791
    :pswitch_1
    const-string/jumbo v1, "BITMAP_MASKABLE"

    move-object v0, v1

    goto :goto_0

    .line 792
    :pswitch_2
    const-string/jumbo v1, "DATA"

    move-object v0, v1

    goto :goto_0

    .line 793
    :pswitch_3
    const-string/jumbo v1, "RESOURCE"

    move-object v0, v1

    goto :goto_0

    .line 794
    :pswitch_4
    const-string/jumbo v1, "URI"

    move-object v0, v1

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 14
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "outIntent":Landroid/content/Intent;
    move-object/from16 v2, p2

    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    move-object/from16 v3, p3

    .local v3, "c":Landroid/content/Context;
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 592
    move-object v8, v0

    iget v8, v8, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 629
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Icon type not supported for intent shortcuts"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 594
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    move-object v4, v8

    .line 595
    .local v4, "icon":Landroid/graphics/Bitmap;
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 597
    move-object v8, v4

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v4, v8

    .line 631
    :cond_0
    :goto_0
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 633
    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v5, v8

    .line 634
    .local v5, "w":I
    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v6, v8

    .line 635
    .local v6, "h":I
    move-object v8, v2

    move v9, v5

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v10, v6

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 636
    move-object v8, v2

    new-instance v9, Landroid/graphics/Canvas;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 638
    .end local v5    # "w":I
    .end local v6    # "h":I
    :cond_1
    move-object v8, v1

    const-string/jumbo v9, "android.intent.extra.shortcut.ICON"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    .line 639
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 601
    :pswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v4, v8

    .line 602
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 605
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    :pswitch_3
    move-object v8, v3

    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    move-object v5, v8

    .line 606
    .local v5, "context":Landroid/content/Context;
    move-object v8, v2

    if-nez v8, :cond_2

    .line 607
    move-object v8, v1

    const-string/jumbo v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 608
    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    .line 607
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    .line 609
    goto :goto_1

    .line 611
    :cond_2
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v6, v8

    .line 612
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-lez v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-gtz v8, :cond_4

    .line 613
    :cond_3
    move-object v8, v5

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 614
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v8

    move v7, v8

    .line 615
    .local v7, "size":I
    move v8, v7

    move v9, v7

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v4, v8

    .line 621
    .end local v7    # "size":I
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 622
    move-object v8, v6

    new-instance v9, Landroid/graphics/Canvas;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 626
    goto/16 :goto_0

    .line 617
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object v9, v6

    .line 618
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 617
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v4, v8

    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 624
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 625
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t find package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public checkResource(Landroid/content/Context;)V
    .locals 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v7, v0

    iget v7, v7, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 462
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 463
    .local v2, "resPackage":Ljava/lang/String;
    move-object v7, v2

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 464
    .line 478
    .end local v2    # "resPackage":Ljava/lang/String;
    :goto_0
    return-void

    .line 467
    .restart local v2    # "resPackage":Ljava/lang/String;
    :cond_0
    move-object v7, v2

    const-string/jumbo v8, ":"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v3, v7

    .line 468
    .local v3, "resName":Ljava/lang/String;
    move-object v7, v3

    const-string/jumbo v8, "/"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v4, v7

    .line 469
    .local v4, "resType":Ljava/lang/String;
    move-object v7, v3

    const-string/jumbo v8, "/"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v3, v7

    .line 470
    move-object v7, v2

    const-string/jumbo v8, ":"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v2, v7

    .line 471
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    move-object v5, v7

    .line 472
    .local v5, "res":Landroid/content/res/Resources;
    move-object v7, v5

    move-object v8, v3

    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 473
    .local v6, "id":I
    move-object v7, v0

    iget v7, v7, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move v8, v6

    if-eq v7, v8, :cond_1

    .line 474
    const-string/jumbo v7, "IconCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Id has changed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 475
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 478
    .end local v2    # "resPackage":Ljava/lang/String;
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resType":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "id":I
    :cond_1
    goto :goto_0
.end method

.method public getResId()I
    .locals 6
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 357
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->getResId(Landroid/graphics/drawable/Icon;)I

    move-result v1

    move v0, v1

    .line 362
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return v0

    .line 359
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 360
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called getResId() on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move v0, v1

    goto :goto_0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 339
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 344
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return-object v0

    .line 341
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 342
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "called getResPackage() on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, ":"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    goto :goto_0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 324
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->getType(Landroid/graphics/drawable/Icon;)I

    move-result v1

    move v0, v1

    .line 326
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    move v0, v1

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 375
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->getUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .line 377
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 490
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 491
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 499
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :goto_0
    return-object v0

    .line 493
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 494
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v4, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_2

    .line 495
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 496
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 497
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 499
    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public onPostParceling()V
    .locals 7

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 758
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 786
    :goto_0
    :pswitch_0
    return-void

    .line 760
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 761
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 763
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Invalid icon"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 769
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 772
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 773
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 774
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 775
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    array-length v2, v2

    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 777
    goto :goto_0

    .line 780
    :pswitch_3
    move-object v1, v0

    new-instance v2, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const-string/jumbo v5, "UTF-16"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 781
    goto :goto_0

    .line 783
    :pswitch_4
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPreParceling(Z)V
    .locals 9

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move v1, p1

    .local v1, "isStream":Z
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 722
    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 753
    :goto_0
    :pswitch_0
    return-void

    .line 724
    :pswitch_1
    move v4, v1

    if-eqz v4, :cond_0

    .line 726
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Can\'t serialize Icon created with IconCompat#createFromIcon"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcelable;

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 731
    goto :goto_0

    .line 734
    :pswitch_2
    move v4, v1

    if-eqz v4, :cond_1

    .line 735
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v2, v4

    .line 736
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 737
    .local v3, "data":Ljava/io/ByteArrayOutputStream;
    move-object v4, v2

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 738
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 739
    goto :goto_0

    .line 740
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcelable;

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 742
    goto :goto_0

    .line 744
    :pswitch_3
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-16"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 745
    goto :goto_0

    .line 747
    :pswitch_4
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "UTF-16"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 748
    goto :goto_0

    .line 750
    :pswitch_5
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iput-object v5, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setTint(I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move v1, p1

    .local v1, "tint":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 398
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    return-object v0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 409
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    new-instance v2, Landroid/os/Bundle;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 647
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 664
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid icon"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :pswitch_1
    move-object v2, v1

    const-string/jumbo v3, "obj"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 651
    .line 666
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, "type"

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    move-object v2, v1

    const-string/jumbo v3, "int1"

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    move-object v2, v1

    const-string/jumbo v3, "int2"

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 670
    move-object v2, v1

    const-string/jumbo v3, "tint_list"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 672
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v3, :cond_1

    .line 673
    move-object v2, v1

    const-string/jumbo v3, "tint_mode"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    return-object v0

    .line 654
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :pswitch_2
    move-object v2, v1

    const-string/jumbo v3, "obj"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 655
    goto :goto_0

    .line 658
    :pswitch_3
    move-object v2, v1

    const-string/jumbo v3, "obj"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    goto :goto_0

    .line 661
    :pswitch_4
    move-object v2, v1

    const-string/jumbo v3, "obj"

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 662
    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 445
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Unknown type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Icon;

    move-object v0, v2

    .line 453
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    :goto_0
    return-object v0

    .line 425
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .line 447
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 448
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 450
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v3, :cond_1

    .line 451
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 453
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 428
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 429
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 431
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 432
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 431
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .line 434
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 436
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_4
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .line 437
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 439
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .line 440
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 442
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v1, v2

    .line 443
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/IconCompat;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 681
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 716
    .end local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 683
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "this":Landroidx/core/graphics/drawable/IconCompat;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "Icon(typ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, v2

    .line 684
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 708
    :cond_1
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 709
    move-object v2, v1

    const-string/jumbo v3, " tint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 710
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 712
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v3, :cond_3

    .line 713
    move-object v2, v1

    const-string/jumbo v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 715
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 716
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 687
    :pswitch_0
    move-object v2, v1

    const-string/jumbo v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 688
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    .line 689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    .line 690
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 691
    goto :goto_1

    .line 693
    :pswitch_1
    move-object v2, v1

    const-string/jumbo v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    .line 694
    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    .line 696
    invoke-virtual {v7}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 697
    goto/16 :goto_1

    .line 699
    :pswitch_2
    move-object v2, v1

    const-string/jumbo v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 700
    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    if-eqz v2, :cond_1

    .line 701
    move-object v2, v1

    const-string/jumbo v3, " off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_1

    .line 705
    :pswitch_3
    move-object v2, v1

    const-string/jumbo v3, " uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_1

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
